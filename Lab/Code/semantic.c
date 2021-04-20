#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
struct type_t
{
	enum{BASIC, ARRAY, STRUCTURE} kind;
	union
	{
		int basic;
		struct {struct type_t *elem; int size;} *array;
		struct fieldlist_t *structure;
	}u;
};
struct fieldlist_t
{
	char *name;
	struct type_t *type;
	struct fieldlist_t *next;
};

struct bucket_t
{
	char *name;
	void *addr;

	
	struct bucket_t *down;
	struct bucket_t *right;
	int hash_pos;
	int stack_pos;
};

struct bucket_t *hash_table[0x3fff] = {0};
struct bucket_t *stack_table[0x3fff] = {0};
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

void hash_insert(int pos, struct bucket_t *a)
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
	struct bucket_t *cur = stack_table[stack_top];
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
	struct bucket_t *temp = malloc(sizeof(struct bucket_t));
	temp->name = name;
}

void parse_tree(struct _node *cur)
{
	

}
