#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
#define LEN_NAME (16)
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

void hash_insert(int pos, struct entry_t *a)
{
	if(a == NULL)return;
	a->right = hash_table[pos];
	hash_table[pos] = a;
	a->down = stack_table[stack_top];
	stack_table[stack_top] = a;
	a->hash_pos = pos;
	a->stack_pos = stack_top;
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

void add_entry(char *name)
{
	struct entry_t *temp = malloc(sizeof(struct entry_t));
	temp->name = name;
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
		char *name = NULL;
		if(cur->left != NULL)name = cur->left->text;
		else 
		{
			name = malloc(LEN_NAME);
			sprintf(name, "hujunhao%d", hujunhao);
			hujunhao++;
		}

		parse_tree(cur->right);
		assert(strcmp(cur->right->right->token_name, "DefList") == 0);
		cur->type = cur->right->right->type;

	}
	else if(strcmp(cur->token_name, "Tag") == 0)
	{
		

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
	if(cur->left != NULL)parse_tree(cur->left);
	if(cur->right != NULL)parse_tree(cur->right);

}
