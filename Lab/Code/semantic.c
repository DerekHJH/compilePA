#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
void raise_error()
{

}


#define LEN_NAME (32)
#define MALLOC(ARG) \
	ARG *temp = malloc(sizeof(ARG));\
	memset(temp, 0, sizeof(ARG))

struct entry_t *hash_table[0x3fff] = {0};
struct entry_t *stack_table[0x3fff] = {0};
int stack_top = 0;

int hujunhao = 0;

unsigned int hash_pjw(char *name)
{
	unsigned int val = 0, i;
	for(; *name; ++name)
	{
		val = (val << 2) + *name;
		if(i = val & ~0x3fff)
			val = (val ^ (i >> 12)) & 0x3fff;
	}
	return val;
}

struct entry_t *hash_search(char *name)
{
	int pos = hash_pjw(name);
	struct entry_t *cur = hash_table[pos];
	while(cur)
	{
		if(strcmp(cur->name, name) == 0)return cur;
		cur = cur->right;
	}
	return NULL;
}

void hash_insert(struct entry_t *e)
{
	if(e == NULL)return;
	int pos = hash_pjw(e->name);
	e->right = hash_table[pos];
	hash_table[pos] = e;
	e->down = stack_table[stack_top];
	stack_table[stack_top] = e;
	e->hash_pos = pos;
	e->stack_pos = stack_top;
}

void stack_new()
{
	stack_top++;
	stack_table[stack_top] = NULL;
}

void stack_delete()
{
	struct entry_t *cur = stack_table[stack_top];
	while(cur)
	{
		assert(hash_table[cur->hash_pos] == cur);
		hash_table[cur->hash_pos] = cur->right;
		cur = cur->down;
	}
	stack_table[stack_top] = NULL;
	stack_top--;
}

void add_entry(char *name, struct type_t *type)
{
	struct entry_t *e = hash_search(name);
	if(e != NULL && e->stack_pos == stack_top)raise_error();
	else
	{
		MALLOC(struct entry_t);
		temp->name = name;
		temp->type = type;
		hash_insert(temp);
	}
}

void array_insert(struct type_t *head, int num)
{
	MALLOC(struct type_t);
}

void parse_tree(struct _node *cur)
{
	if(strcmp(cur->token_name, "TYPE") == 0)		
	{
		assert(cur->left == NULL);
        assert(cur->right == NULL);

		cur->type = malloc(sizeof(struct type_t));
		cur->type->kind = BASIC;
		if(strcmp(cur->text, "INT") == 0)cur->type->basic = 1;
		else if(strcmp(cur->text, "FLOAT") == 0)cur->type->basic = 2;
	}
	else if(strcmp(cur->token_name, "STRUCT") == 0)
	{
		assert(cur->left == NULL); 	
        assert(cur->right != NULL);
		
		parse_tree(cur->right);
		cur->type = cur->right->type;
	}
	else if(strcmp(cur->token_name, "OptTag") == 0)
	{ 	
		assert(cur->right != NULL);
		assert(strcmp(cur->right->right->token_name, "DefList") == 0);

		parse_tree(cur->right);
		cur->type = cur->right->right->type;

		char *name = malloc(LEN_NAME);
        if(cur->left != NULL)sprintf(name, "hujunhao%s", cur->left->text);
        else 
        {
        	sprintf(name, "hujunhao%d", hujunhao);
        	hujunhao++;
        }
		add_entry(name, cur->type);
	}
	else if(strcmp(cur->token_name, "DefList") == 0)
	{
		//TODO();
		
	}
	else if(strcmp(cur->token_name, "Tag") == 0)
	{
		assert(cur->left != NULL);
		assert(cur->right == NULL);
		assert(strcmp(cur->left->token_name, "ID") == 0);

		char *name = malloc(LEN_NAME);
		sprintf(name, "hujunhao%s", cur->left->text);
		struct entry_t *e = hash_search(name); 
		
		if(e == NULL)raise_error();
		else cur->type = e->type;
	}
	else if(strcmp(cur->token_name, "StructSpecifier") == 0)
	{
		assert(cur->left != NULL);
		assert(cur->right == NULL);

		parse_tree(cur->left);
		cur->type = cur->left->type;
	}
	else if(strcmp(cur->token_name, "Specifier") == 0)
	{
		assert(cur->left != NULL);
		assert(cur->right != NULL);

		parse_tree(cur->left);
		cur->type = cur->left->type;

		cur->right->type = cur->type;
		parse_tree(cur->right);
	}
	else if(strcmp(cur->token_name, "VarDec") == 0)
	{
		if(strcmp(cur->token_name, "VarDec") == 0)
		{
			if(cur->type_a == NULL)
			{
				MALLOC(struct type_t);
				temp->kind = ARRAY;
				cur->type_a = temp;
			}
			array_insert(cur->type_a, cur->right->right->int_val);

		}
		
	}

	if(cur->left != NULL)parse_tree(cur->left);
	if(cur->right != NULL)parse_tree(cur->right);

}
