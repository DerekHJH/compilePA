#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
void raise_error(int code, int line)
{
	printf("Error type %d at Line %d: semantic error!\n", code, line);
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

		hash_table[cur->hash_pos] = cur->right;
		cur = cur->down;
	}
	stack_table[stack_top] = NULL;
	stack_top--;

	return temp;
}

int add_entry(char *name, struct type_t *type)
{
	if(name == NULL || type == NULL)return 0;
	struct entry_t *e = hash_search(name);
	if(e != NULL && e->stack_pos == stack_top)return 0;
	else
	{
		MALLOC(temp, struct entry_t);
		temp->name = name;
		temp->type = type;
		hash_insert(temp);
		return 1;
	}
}

int is_type_equal(struct type_t *t1, struct type_t *t2)
{
	if(t1 == NULL || t2 == NULL)return 2;
	if(t1->kind != t2->kind)return 0;
	if(t1->kind == BASIC && t1->basic != t2->basic)return 0;
	if(t1->kind == ARRAY && is_type_equal(t1->array->elem, t2->array->elem) == 0)return 0;
	if(t1->kind == STRUCTURE || t1->kind == FUNCTION)
	{
		struct entry_t *e1 = t1->structure;
		struct entry_t *e2 = t2->structure;
		while(e1 != NULL && e2 != NULL)
		{
			if(is_type_equal(e1->type, e2->type) == 0)return 0;
			e1 = e1->down;
			e2 = e2->down;
		}
		if(e1 != NULL || e2 != NULL)return 0;
	}
	return 1;
}
void print_table(struct type_t *t)
{
	struct entry_t *e = t->structure;
	if(e != NULL)printf("stack_top = %d\n", e->stack_pos);
	while(e)
	{
		printf("kind of %d, name is %s\n", e->type->kind, e->name);
		e = e->down;
	}
	printf("\n*****************************\n");

	e = t->structure;
	if(e != NULL && e->stack_pos == 2)
	{
		printf("hhahahab%d\n", is_type_equal(e->type, e->down->type));
	}

}
struct type_t *is_in_struct(struct type_t *t, char *name)
{
	if(t->kind != STRUCTURE)return NULL;
	struct entry_t *e = t->structure;
	while(t)
	{
		if(strcmp(e->name, name) == 0)return e->type;
		e = e->down;
	}
	return NULL;
}
struct type_t *Int = NULL;
struct type_t *Float = NULL;
void parse_tree(struct _node *cur);
void Parse_Tree(struct _node *cur)
{
	Int = malloc(sizeof(struct type_t));
	Int->kind = BASIC;
	Int->basic = 1;
	
	Float = malloc(sizeof(struct type_t));
    Float->kind = BASIC;
    Float->basic = 2;

	parse_tree(cur);
}

void parse_tree(struct _node *cur)
{
	struct _node *child = cur->left;
	if(strcmp(cur->token_name, "ExtDef") == 0)
	{
		parse_tree(child);
		child->right->type = child->type;
		
		child = child->right;
		if(strcmp(child->token_name, "FunDec") == 0)
		{
			stack_new();
			parse_tree(child);

			child->right->type = child->type;//for CompSt, for RETURN
			parse_tree(child->right);

			stack_delete();
			if(add_entry(child->left->text, child->type) == 0)raise_error(4, cur->lineno);
		}
		else parse_tree(child);
	}
	else if(strcmp(cur->token_name, "ExtDecList") == 0 || strcmp(cur->token_name, "DecList") == 0)
	{
		child->type = cur->type;
		parse_tree(child);

		child = child->right;
		if(child != NULL)
		{
			child = child->right;
			child->type = cur->type;
			parse_tree(child);
		}
	}
	else if(strcmp(cur->token_name, "Specifier") == 0)
    {
    	parse_tree(child);
    	cur->type = child->type;
    }
	else if(strcmp(cur->token_name, "TYPE") == 0)		
	{
		if(strcmp(cur->text, "int") == 0)cur->type = Int;
        else if(strcmp(cur->text, "float") == 0)cur->type = Float;
	}
	else if(strcmp(cur->token_name, "StructSpecifier") == 0)
    {
		child = child->right;
		if(child->right != NULL) //child is OptTag
		{
			stack_new();
            parse_tree(child->right->right);
            cur->type = stack_delete();

            if(child->left != NULL)
            	if(add_entry(child->left->text, cur->type) == 0)raise_error(16, cur->lineno);
		}
		else //child is Tag
		{
			struct entry_t *e = hash_search(child->left->text); 
            if(e == NULL)raise_error(17, cur->lineno);
            else cur->type = e->type;
		}
    }
	else if(strcmp(cur->token_name, "VarDec") == 0)
	{
		if(strcmp(child->token_name, "VarDec") == 0)
		{
			MALLOC(temp1, struct type_t);
			temp1->kind = ARRAY;

			MALLOC(temp, struct array_t);
			temp->elem = cur->type;
			temp->dim = child->right->right->int_val;

			temp1->array = temp;

			child->type = temp1;
			parse_tree(child);
		}
		else if(add_entry(child->text, cur->type) == 0)raise_error(3, cur->lineno); //child is ID
	}
	else if(strcmp(cur->token_name, "FunDec") == 0)
	{
		MALLOC(temp, struct type_t);
		temp->kind = FUNCTION;

		MALLOC(temp1, struct entry_t);
		temp1->type = cur->type;

		temp->structure = temp1;

		cur->type = temp;
		
		if(strcmp(child->right->right->token_name, "VarList") == 0)parse_tree(child->right->right);
		cur->type->structure->down = stack_table[stack_top];
	}
	else if(strcmp(cur->token_name, "CompSt") == 0)
	{
		parse_tree(child->right);
		child->right->right->type = cur->type;
		parse_tree(child->right->right);
	}
	else if(strcmp(cur->token_name, "StmtList") == 0 && child != NULL)
    {
		child->type = cur->type;
    	parse_tree(child);
    	child->right->type = cur->type;
    	parse_tree(child->right);
    }
	else if(strcmp(cur->token_name, "Stmt") == 0)
	{
		if(strcmp(child->token_name, "Exp") == 0)parse_tree(child);
		else if(strcmp(child->token_name, "CompSt") == 0)
		{
			stack_new();
			parse_tree(child);
			stack_delete();
		}
		else if(strcmp(child->token_name, "RETURN") == 0)
		{
			parse_tree(child->right);
			if(is_type_equal(cur->type, child->type) == 0)raise_error(8, cur->lineno);
		}
		else if(strcmp(child->token_name, "IF") == 0)
        {
        	parse_tree(child->right->right);
        	if(is_type_equal(child->right->right->type, Int) == 0)raise_error(7, cur->lineno);
        	parse_tree(child->right->right->right->right);
			if(child->right->right->right->right->right!= NULL)
				parse_tree(child->right->right->right->right->right->right);
        }
		else if(strcmp(child->token_name, "WHILE") == 0)
		{
			parse_tree(child->right->right);
			if(is_type_equal(child->right->right->type, Int) == 0)raise_error(7, cur->lineno);
			parse_tree(child->right->right->right->right);
		}
	}
	else if(strcmp(cur->token_name, "Dec") == 0)
	{
		child->type = cur->type;
		parse_tree(child);
		if(child->right != NULL)
		{
			parse_tree(child->right->right);
            if(is_type_equal(child->type, child->right->right->type) == 0)raise_error(5, cur->lineno);
		}
	}
	else if(strcmp(cur->token_name, "Exp") == 0)
	{
		if(strcmp(child->token_name, "INT") == 0)cur->type = Int;
		else if(strcmp(child->token_name, "FLOAT") == 0)cur->type = Float;
		else if(strcmp(child->token_name, "ID") == 0)
		{
			struct entry_t *e = hash_search(child->text);
			if(e == NULL)raise_error(1, cur->lineno);
			else cur->type = e->type;
		}
		else if(strcmp(child->right->token_name, "ASSIGNOP") == 0)
		{
			parse_tree(child);
			parse_tree(child->right->right);
			if(is_type_equal(child->type, child->right->right->type) == 0)raise_error(5, cur->lineno);
			else cur->type = child->type;
		}
		else if(strcmp(child->right->token_name, "AND") == 0 || strcmp(child->right->token_name, "OR") == 0 || strcmp(child->right->token_name, "RELOP") == 0)
		{
			parse_tree(child);
            parse_tree(child->right->right);
			if(!(is_type_equal(child->type, Int) && is_type_equal(child->right->right->type, Int)))raise_error(7, cur->lineno);
			else cur->type = Int;
		}
		else if(strcmp(child->right->token_name, "PLUS") == 0 || strcmp(child->right->token_name, "MINUS") == 0 || strcmp(child->right->token_name, "STAR") == 0 || strcmp(child->right->token_name, "DIV") == 0)
		{
			parse_tree(child);
            parse_tree(child->right->right);
			if(is_type_equal(child->type, child->right->right->type) == 0)raise_error(7, cur->lineno);
			else cur->type = child->type;
		}
		else if(strcmp(child->token_name, "LP") == 0)
		{
			parse_tree(child->right);
			cur->type = child->right->type;
		}
		else if(strcmp(child->token_name, "MINUS") == 0)
		{

			parse_tree(child->right);
            cur->type = child->right->type;
		}
		else if(strcmp(child->token_name, "NOT") == 0)
		{
			if(is_type_equal(child->right->type, Int) == 0)raise_error(7, cur->lineno);	
			else cur->type = Int;
		}
		else if(strcmp(child->right->token_name, "LP") == 0)
		{
			struct entry_t *e = hash_search(child->text);
            if(e == NULL || e->type->kind != FUNCTION)raise_error(2, cur->lineno);
			else
			{
				struct type_t *temp = malloc(sizeof(struct type_t));
				temp->kind = FUNCTION;
				MALLOC(temp1, struct entry_t);
				temp1->type = e->type->structure->type;

				temp->structure = temp1;
				child->right->right->type = temp;
				if(child->right->right->right!= NULL)parse_tree(child->right->right);	

				if(is_type_equal(child->right->right->type, e->type) == 0)raise_error(9, cur->lineno);
				else cur->type = temp1->type;
			}
		}
		else if(strcmp(child->right->token_name, "LB") == 0)
		{
			parse_tree(child);
			parse_tree(child->right->right);
			if(is_type_equal(child->right->right->type, Int) == 0)raise_error(12, cur->lineno);	
			else if(child->type->kind != ARRAY)raise_error(10, cur->lineno);
			else cur->type = child->type->array->elem;
		}
		else if(strcmp(cur->left->right->token_name, "DOT") == 0)
		{
			parse_tree(child);
			if(child->type->kind != STRUCTURE)raise_error(13, cur->lineno);	
			else
			{
				struct type_t *t = is_in_struct(child->type, child->right->right->text);
				if(t == NULL)raise_error(14, cur->lineno);	
				else cur->type = t;
			}
		}
	}
	else if(strcmp(cur->token_name, "Args") == 0)
	{
		parse_tree(child);
		struct entry_t *e = cur->type->structure;
		
		MALLOC(temp, struct entry_t);
		temp->type = child->type;
		
		temp->down = e->down;
		e->down = temp;
		if(child->right != NULL)
		{
			child->right->right->type = cur->type;
			parse_tree(child->right->right);
		}
	}
	else
	{
		while(child)
		{
			parse_tree(child);
			child = child->right;
		}
	}

}






























































/*
void parse_tree(struct _node *cur)
{
	if(strcmp(cur->token_name, "ExtDecList") == 0)
	{
		cur->left->pre_type = cur->pre_type;
		parse_tree(cur->left);
	}
	else if(strcmp(cur->token_name, "Specifier") == 0)
    {
    	assert(cur->left != NULL);
    	assert(cur->right != NULL);
                                                             
    	parse_tree(cur->left);
    	cur->ret_type = cur->left->ret_type;
                                                             
    	cur->right->pre_type = cur->ret_type;
    	parse_tree(cur->right);
    }
	else if(strcmp(cur->token_name, "TYPE") == 0)		
	{
		if(strcmp(cur->text, "int") == 0)cur->ret_type = Int;
        else if(strcmp(cur->text, "float") == 0)cur->ret_type = Float;
	}
	else if(strcmp(cur->token_name, "StructSpecifier") == 0)
    {
    	parse_tree(cur->left->right);
    	cur->ret_type = cur->left->right->ret_type;
    }
	else if(strcmp(cur->token_name, "OptTag") == 0)
	{ 	
		stack_new();
		parse_tree(cur->right->right);
		cur->ret_type = cur->right->right->right->ret_type;

		if(cur->left != NULL)
			if(add_entry(cur->left->text, cur->ret_type) == 0)raise_error(16, cur->lineno);
	}
	else if(strcmp(cur->token_name, "RC") == 0)cur->ret_type = stack_delete();	
	else if(strcmp(cur->token_name, "Tag") == 0)
	{
		struct entry_t *e = hash_search(cur->left->text); 
		if(e == NULL)raise_error(17, cur->lineno);
		else cur->ret_type = e->type;
	}
	else if(strcmp(cur->token_name, "VarDec") == 0)
	{
		if(strcmp(cur->left->token_name, "VarDec") == 0)
		{
			MALLOC(temp1, struct type_t);
			temp1->kind = ARRAY;

			MALLOC(temp, struct array_t);
			temp->elem = cur->pre_type;
			temp->dim = cur->left->right->right->int_val;

			temp1->array = temp;

			cur->left->pre_type = temp1;
			parse_tree(cur->left);
			cur->ret_type = cur->left->ret_type;
		}
		else if(strcmp(cur->left->token_name, "ID") == 0)
		{
			cur->ret_type = cur->pre_type;
			if(add_entry(cur->left->text, cur->ret_type) == 0)raise_error(3, cur->lineno);
		}
		
		if(cur->right != NULL)
		{
			if(strcmp(cur->right->token_name, "COMMA") == 0)
			{
				cur->right->right->pre_type = cur->pre_type;
				parse_tree(cur->right->right);
			}
			else if(strcmp(cur->right->token_name, "ASSIGNOP") == 0)
			{
				parse_tree(cur->right->right);
				if(is_type_equal(cur->ret_type, cur->right->right->ret_type) == 0)raise_error(5, cur->lineno);
			}
		}
	}
	else if(strcmp(cur->token_name, "FunDec") == 0)
	{
		MALLOC(temp, struct type_t);
		temp->kind = FUNCTION;

		MALLOC(temp1, struct entry_t);
		temp1->type = cur->pre_type;

		temp->structure = temp1;

		cur->ret_type = temp;
		
		stack_new();
		if(strcmp(cur->left->right->right->token_name, "VarList") == 0)parse_tree(cur->left->right->right);
		cur->ret_type->structure->down = stack_table[stack_top];

		if(strcmp(cur->right->token_name, "CompSt") == 0)
		{
			//TODO();
			parse_tree(cur->right);
			if(add_entry(cur->left->text, cur->ret_type) == 0)raise_error(4, cur->lineno);
		}
		else if(strcmp(cur->right->token_name, "SEMI") == 0)
		{
			//TODO();
		}
	}
	else if(strcmp(cur->token_name, "DecList") == 0)
	{
		cur->left->pre_type = cur->pre_type;
		parse_tree(cur->left);
	}
	else if(strcmp(cur->token_name, "Dec") == 0)
	{
		if(cur->right != NULL)cur->right->right->pre_type = cur->pre_type;
		cur->left->pre_type = cur->pre_type;
		parse_tree(cur->left);
		if(cur->right != NULL)parse_tree(cur->right);
	}
	else if(strcmp(cur->token_name, "Exp") == 0)
	{
		parse_tree(cur->left);
		if(cur->right != NULL)parse_tree(cur->right);
		if(strcmp(cur->left->token_name, "INT") == 0)cur->ret_type = Int;
		else if(strcmp(cur->left->token_name, "FLOAT") == 0)cur->ret_type = Float;
		else if(strcmp(cur->left->token_name, "ID") == 0)
		{
			struct entry_t *e = hash_search(cur->left->text);
			if(e == NULL)raise_error(1, cur->lineno);
			else cur->ret_type = e->type;
		}
		else if(strcmp(cur->left->right->token_name, "ASSIGNOP") == 0)
		{
			if(is_type_equal(cur->left->ret_type, cur->left->right->right->ret_type) == 0)raise_error(5, cur->lineno);
			else cur->ret_type = cur->left->ret_type;
		}
		else if(strcmp(cur->left->right->token_name, "AND") == 0 || strcmp(cur->left->right->token_name, "OR") == 0 || strcmp(cur->left->right->token_name, "RELOP") == 0)
		{
			if(!(is_type_equal(cur->left->ret_type, Int) && is_type_equal(cur->left->right->right->ret_type, Int)))raise_error(7, cur->lineno);
			else cur->ret_type = Int;
		}
		else if(strcmp(cur->left->right->token_name, "PLUS") == 0 || strcmp(cur->left->right->token_name, "MINUS") == 0 || strcmp(cur->left->right->token_name, "STAR") == 0 || strcmp(cur->left->right->token_name, "DIV") == 0)
		{
			if(is_type_equal(cur->left->ret_type, cur->left->right->right->ret_type) == 0)raise_error(7, cur->lineno);
			else cur->ret_type = cur->left->ret_type;
		}
		else if(strcmp(cur->left->token_name, "LP") == 0)cur->ret_type = cur->left->right->ret_type;
		else if(strcmp(cur->left->token_name, "MINUS") == 0)cur->ret_type = cur->left->right->ret_type;
		else if(strcmp(cur->left->token_name, "NOT") == 0)
		{
			if(is_type_equal(cur->left->right->ret_type, Int) == 0)raise_error(7, cur->lineno);	
			else cur->ret_type = cur->left->right->ret_type;
		}
		else if(strcmp(cur->left->right->token_name, "LP") == 0)
		{
			struct entry_t *e = hash_search(cur->left->text);
            if(e == NULL || e->type->kind != FUNCTION)raise_error(2, cur->lineno);
			else
			{
				//if()
				//else cur->ret_type = e->type;
			}
		}
		else if(strcmp(cur->left->right->token_name, "LB") == 0)
		{
			if(is_type_equal(cur->left->right->ret_type, Int) == 0)raise_error(12, cur->lineno);	
			if(cur->left->ret_type->kind != ARRAY)raise_error(10, cur->lineno), cur->ret_type = NULL;
			else cur->ret_type = cur->left->ret_type->array->elem;
		}
		else if(strcmp(cur->left->right->token_name, "DOT") == 0)
		{
			if(cur->left->ret_type->kind != STRUCTURE)raise_error(13, cur->lineno), cur->ret_type = NULL;	
			else
			{
				struct type_t *t = is_in_struct(cur->left->ret_type, cur->left->right->right->text);
				if(t == NULL)raise_error(14, cur->lineno), cur->ret_type = NULL;	
				else cur->ret_type = t;
			}
		}
	}
	else if(strcmp(cur->token_name, "Args") == 0)
	{
		parse_tree(cur->left);
		struct entry_t *e = cur->ret_type->structure;
		
		MALLOC(temp, struct entry_t);
		temp->type = cur->left->ret_type;
		
		temp->down = e->down;
		e->down = temp;
		if(cur->left->right != NULL)
		{
			cur->left->right->right->ret_type = cur->ret_type;
			parse_tree(cur->left->right->right);
		}
	}
	else
	{
		struct _node *child = cur->left;
		while(child)
		{
			parse_tree(child);
			child = child->right;
		}
	}

}
*/
