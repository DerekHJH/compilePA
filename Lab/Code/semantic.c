#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
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
		cur->type = malloc(sizeof(struct type_t));
		cur->type->kind = BASIC;
		if(strcmp(cur->text, "INT") == 0)cur->type->basic = 1;
		else if(strcmp(cur->text, "FLOAT") == 0)cur->type->basic = 2;
	}
	else if(strcmp(cur->token_name, "Specifier") == 0)
	{
		parse_tree(cur->left);
		cur->type = cur->left->type;
		//TODO();

	}

}
