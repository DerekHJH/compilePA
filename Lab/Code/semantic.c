#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
void raise_error()
{

}


#define LEN_NAME (32)
#define MALLOC(arg1, arg2) \
	arg2 *arg1 = malloc(sizeof(arg2));\
	memset(arg1, 0, sizeof(arg2))

struct entry_t *hash_table[0x3fff] = {0};
struct entry_t *stack_table[0x3fff] = {0};
int stack_top = 0;

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
	unsigned int pos = hash_pjw(e->name);
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

struct type_t *stack_delete()
{
	MALLOC(temp, struct type_t);
	temp->kind = STRUCTURE;
	temp->structure = stack_table[stack_top];
	struct entry_t *cur = stack_table[stack_top];
	while(cur)
	{
		assert(hash_table[cur->hash_pos] == cur);

		temp->size += cur->type->size;
		hash_table[cur->hash_pos] = cur->right;
		cur = cur->down;
	}
	stack_table[stack_top] = NULL;
	stack_top--;

	return temp;
}

void add_entry(char *name, struct type_t *type)
{
	if(name == NULL || type == NULL)return;
	struct entry_t *e = hash_search(name);
	if(e != NULL && e->stack_pos == stack_top)raise_error();
	else
	{
		MALLOC(temp, struct entry_t);
		temp->name = name;
		temp->type = type;
		hash_insert(temp);
	}
}

void parse_tree(struct _node *cur)
{
	if(strcmp(cur->token_name, "ExtDecList") == 0)
	{
		cur->left->type = cur->type;
		parse_tree(cur->left);
	}
	else if(strcmp(cur->token_name, "TYPE") == 0)		
	{
		assert(cur->left == NULL);
        assert(cur->right == NULL);

		cur->type = malloc(sizeof(struct type_t));
		cur->type->kind = BASIC;
		if(strcmp(cur->text, "INT") == 0)cur->type->basic = 1;
		else if(strcmp(cur->text, "FLOAT") == 0)cur->type->basic = 2;
		cur->type->size = 4;
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

		stack_new();
		parse_tree(cur->right);
		cur->type = cur->right->right->right->type;

		if(cur->left != NULL)add_entry(cur->left->text, cur->type);
	}
	else if(strcmp(cur->token_name, "RC") == 0)cur->type = stack_delete();	
	else if(strcmp(cur->token_name, "Tag") == 0)
	{
		assert(cur->left != NULL);
		assert(cur->right == NULL);
		assert(strcmp(cur->left->token_name, "ID") == 0);

		struct entry_t *e = hash_search(cur->left->text); 
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
		//handle the left part
		if(strcmp(cur->left->token_name, "VarDec") == 0)
		{
			MALLOC(temp1, struct type_t);
			temp1->kind = ARRAY;

			MALLOC(temp, struct array_t);
			temp->elem = cur->type;
			temp->dim = cur->left->right->right->int_val;

			temp1->array = temp;
			temp1->size = temp->dim * temp->elem->size;

			cur->left->type = temp1;
			parse_tree(cur->left);
		}
		else if(strcmp(cur->left->token_name, "ID") == 0)add_entry(cur->left->text, cur->type);
		
		//handle the right part
		if(cur->right != NULL)
		{
			if(strcmp(cur->right->token_name, "COMMA") == 0)
			{
				cur->right->right->type = cur->type;
				parse_tree(cur->right);
			}
			else if(strcmp(cur->right->token_name, "ASSIGNOP") == 0)
			{
				//TODO();
			}
		}
	}
	else if(strcmp(cur->token_name, "FunDec") == 0)
	{
		MALLOC(temp, struct type_t);
		temp->kind = FUNCTION;

		MALLOC(temp1, struct entry_t);
		temp1->type = cur->type;

		temp->structure = temp1;

		cur->type = temp;
		
		stack_new();
		if(strcmp(cur->left->right->right->token_name, "VarList") == 0)parse_tree(cur->left->right->right);
		cur->type->structure->next = stack_table[stack_top];

		if(strcmp(cur->right->token_name, "CompSt") == 0)
		{
			add_entry(cur->left->left->text, cur->type);
			parse_tree(cur->right);
		}
		else if(strcmp(cur->right->token_name, "SEMI") == 0)
		{

		}
	}
	else if(strcmp(cur->token_name, "DecList") == 0)
	{
		cur->left->type = cur->type;
		parse_tree(cur->left);
	}
	else if(strcmp(cur->token_name, "Dec") == 0)
	{
		if(cur->right != NULL)cur->right->right->type = cur->type;
		cur->left->type = cur->type;
	}
	else
	{
		if(cur->left != NULL)parse_tree(cur->left);
		if(cur->right != NULL)parse_tree(cur->right);
	}

}
