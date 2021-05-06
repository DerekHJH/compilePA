#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "common.h"
#include <string.h>
int def_in_struct = 0;
char *error_msg[20] = {"no error", 
"Undefined variable", 
"Undefined function",
"Redefined variable",
"Redefined function",
"Type mismatched for assignment",
"The left-hand side of an assignment must be a variable",
"Type mismatched for operands",
"Type mismatched for return",
"Function is not applicable for arguments",
"Variable is not an array",
"Variable is not a function",
"Index of an array must be an integer",
"Illegal use of \".\"",
"Non-existent field",
"Redefined field or inappropriate assignment inside a structure definition",
"Duplicated name for structures",
"Undefined structure",
"Undefined function",
"Inconsistent of declaration of function"
};


void raise_error(int code, int line)
{
	if(code == 3 && def_in_struct)code = 15;
	printf("Error type %d at Line %d: %s.\n", code, line, error_msg[code]);
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
int is_struct = 0;
int add_entry(char *name, struct type_t *type)
{
	if(name == NULL || type == NULL)return REPORT_ALL_ERROR;
	struct entry_t *e = hash_search(name);
	if(e != NULL && e->stack_pos == stack_top)return 0;
	if(e != NULL && e->type->kind == STRUCTURE && e->is_struct)return 0;
	else
	{
		MALLOC(temp, struct entry_t);
		temp->name = name;
		temp->type = type;
		temp->is_struct = is_struct;
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
void print_table()
{
	printf("stack_top is %d\n", stack_top);
	struct entry_t *e  = stack_table[stack_top];
	while(e)
	{
		printf("kind of %d, name is %s\n", e->type->kind, e->name);
		e = e->down;
	}
	printf("*****************************\n");
}
struct type_t *is_in_struct(struct type_t *t, char *name)
{
	if(t->kind != STRUCTURE)return NULL;
	struct entry_t *e = t->structure;
	while(e)
	{
		if(strcmp(e->name, name) == 0)return e->type;
		e = e->down;
	}
	return NULL;
}
struct type_t *Int = NULL;
struct type_t *Float = NULL;

//translate code
extern struct intercode_t *code_head;
extern int Label, Variable, Function, t0;
void code_insert(struct intercode_t *code);
void generate_code();
void print_code();
//translate code


void parse_tree(struct _node *cur);
void Parse_Tree(struct _node *cur)
{
	Int = malloc(sizeof(struct type_t));
	Int->kind = BASIC;
	Int->basic = 1;
	
	Float = malloc(sizeof(struct type_t));
    Float->kind = BASIC;
    Float->basic = 2;

	//translate code
	code_head = malloc(sizeof(struct intercode_t));
	code_head->prev = code_head;
	code_head->next = code_head;
	generate(codeASSIGN, t0, 0, 0);
	generate(codeASSIGN, t1, 1, 0);
	//translate code

	parse_tree(cur);
	
	struct entry_t *e = stack_table[0];
	while(e)
	{
		if(e->type->kind == FUNCTION && e->type->structure->name != NULL)raise_error(18, (size_t)e->type->structure->name);
		e = e->down;
	}
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

			if(child->left->text != NULL && child->type != NULL)
            {
                struct entry_t *e = hash_search(child->left->text);
            	if(e == NULL)
				{
					stack_top--;
					add_entry(child->left->text, child->type);
					stack_top++;
				}
                else if(e->type->structure->name != NULL && is_type_equal(child->type, e->type))e->type->structure->name = NULL;	
            	else if(e->type->structure->name == NULL)raise_error(4, cur->lineno);
				else 
				{
					e->type = child->type;
					raise_error(19, cur->lineno);
				}
            }

			child->right->type = child->type->structure->type;//for CompSt, for RETURN
			parse_tree(child->right);

			//print_table();
			stack_delete();
		}
		else parse_tree(child);
	}
	else if(strcmp(cur->token_name, "ExtDecList") == 0)
	{
		if(strcmp(child->token_name, "FunDec") == 0)
		{
			stack_new();
			child->type = cur->type;
            parse_tree(child);
            stack_delete();
			if(child->left->text != NULL && child->type != NULL)
			{
				child->type->structure->name = (void *)(size_t)cur->lineno;
				struct entry_t *e = hash_search(child->left->text);
				if(e == NULL)add_entry(child->left->text, child->type);
				else if(is_type_equal(child->type, e->type) == 0)raise_error(19, cur->lineno);
			}
		}
		else
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
	}
	else if(strcmp(cur->token_name, "DecList") == 0)
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
			def_in_struct = 1;
            parse_tree(child->right->right);
			def_in_struct = 0;
            cur->type = stack_delete();

            if(child->left != NULL)
			{
				int temp_stack_top = stack_top;
				stack_top = 0;
				is_struct = 1;
            	if(add_entry(child->left->text, cur->type) == 0)raise_error(16, cur->lineno);
				is_struct = 0;
				stack_top = temp_stack_top;
			}
		}
		else //child is Tag
		{
			struct entry_t *e = hash_search(child->left->text); 
            if(e == NULL || e->is_struct == 0)raise_error(17, cur->lineno);
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
			//cur->type has been used and expired
			cur->type = child->type;
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
	else if(strcmp(cur->token_name, "ParamDec") == 0)
	{
		parse_tree(child);
		child->right->type = child->type;
		parse_tree(child->right);
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
			child->type = cur->type;
			parse_tree(child);
			stack_delete();
		}
		else if(strcmp(child->token_name, "RETURN") == 0)
		{
			parse_tree(child->right);
			if(is_type_equal(cur->type, child->right->type) == 0)raise_error(8, cur->lineno);
			else
			{
				//translate
				generate_code(codeRETURN, child->right->var_no, 0, 0);
			}
		}
		else if(strcmp(child->token_name, "IF") == 0)
        {
			//translate
			int label1 = ++Label;
			int label2 = ++Label;
			int label3 = 0;
			//translate
			child->right->right->type = cur->type;//Is this line of code neccessary?

			//translate
			child->right->right->true_label = label1;
			child->right->right->false_label = label2;
			//translate
        	parse_tree(child->right->right);

        	if(is_type_equal(child->right->right->type, Int) == 0)raise_error(7, cur->lineno);
			generate_code(codeLABEL, label1, 0, 0);//translate
        	parse_tree(child->right->right->right->right);
			if(child->right->right->right->right->right!= NULL)
			{
				//translate
				label3 = ++Label;
				generate_code(codeGOTO, label3, 0, 0);
				generate_code(codeLABEL, label2, 0, 0);
				//translate
				child->right->right->right->right->right->right->type = cur->type;
				parse_tree(child->right->right->right->right->right->right);
				generate_code(codeLABEL, label3, 0, 0);
			}
			else generate_code(codeLABEL, label2, 0, 0);//translate
        }
		else if(strcmp(child->token_name, "WHILE") == 0)
		{
			//translate
			int label1 = ++Label;
            int label2 = ++Label;
            int label3 = ++Label;
			child->right->right->true_label = label2;
			child->right->right->false_label = label3;
			generate_code(codeLABEL, label1, 0, 0);
			//translate
			parse_tree(child->right->right);
			generate_code(codeLABEL, label2, 0, 0);//translate
			if(is_type_equal(child->right->right->type, Int) == 0)raise_error(7, cur->lineno);
			child->right->right->right->right->type = cur->type;
			parse_tree(child->right->right->right->right);
			//translate
			generate_code(codeGOTO, label1, 0, 0);
			generate_code(codeLABEL, label3, 0, 0);
			//translate
		}
	}
	else if(strcmp(cur->token_name, "Def") == 0)
	{
		parse_tree(child);
		child->right->type = child->type;
		parse_tree(child->right);
	}
	else if(strcmp(cur->token_name, "Dec") == 0)
	{
		child->type = cur->type;
		parse_tree(child);
		if(child->right != NULL)
		{
			if(def_in_struct == 0)
			{
				parse_tree(child->right->right);
				if(is_type_equal(child->type, child->right->right->type) == 0)raise_error(5, cur->lineno);
			}
			else raise_error(15, cur->lineno);
		}
	}
	else if(strcmp(cur->token_name, "Exp") == 0)
	{
		if(strcmp(child->token_name, "INT") == 0)
		{
			cur->type = Int;
			//translate code
			cur->var_no = ++Variable;
			generate_code(codeASSIGN, cur->var_no, child->int_val, 0);
		}
		else if(strcmp(child->token_name, "FLOAT") == 0)cur->type = Float;//no const float number
		else if(strcmp(child->token_name, "ID") == 0 && child->right == NULL)
		{
			struct entry_t *e = hash_search(child->text);
			if(e == NULL || e->is_struct == 1)raise_error(1, cur->lineno);
			else 
			{
				cur->type = e->type;
				//translate
				if(e->var_no == 0)e->var_no = ++Variable;
				cur->var_no = e->var_no;
			}
		}
		else if(strcmp(child->right->token_name, "ASSIGNOP") == 0)
		{
			parse_tree(child);
			parse_tree(child->right->right);
			if(is_type_equal(child->type, child->right->right->type) == 0)raise_error(5, cur->lineno);
			else if(!((strcmp(child->left->token_name, "ID") == 0 && child->left->right == NULL) || (child->left->right != NULL && strcmp(child->left->right->token_name, "LB") == 0) || (child->left->right!= NULL && strcmp(child->left->right->token_name, "DOT") == 0)))raise_error(6, cur->lineno);
			else 
			{
				cur->type = child->type;
				//translate
				cur->var_no = cur->right->right->var_no;
			}
		}
		else if(strcmp(child->right->token_name, "AND") == 0 || strcmp(child->right->token_name, "OR") == 0 || strcmp(child->right->token_name, "RELOP") == 0)
		{
			//translate
			if(strcmp(child->right->token_name, "RELOP") == 0)	
            {
				parse_tree(child);
				parse_tree(child->right->right);
            	if(strcmp(child->right->text, "==") == 0)generate_code(codeE, child->var_no, child->right->var_no, cur->true_label);
				else if(strcmp(child->right->text, "!=") == 0)generate_code(codeNE, child->var_no, child->right->var_no, cur->true_label);
				else if(strcmp(child->right->text, ">") == 0)generate_code(codeG, child->var_no, child->right->var_no, cur->true_label);
				else if(strcmp(child->right->text, ">=") == 0)generate_code(codeGE, child->var_no, child->right->var_no, cur->true_label);
				else if(strcmp(child->right->text, "<") == 0)generate_code(codeL, child->var_no, child->right->var_no, cur->true_label);
				else if(strcmp(child->right->text, "<=") == 0)generate_code(codeLE, child->var_no, child->right->var_no, cur->true_label);
				generate_code(codeGOTO, cur->false_label, 0, 0);
            }
			else
			{
				int label = ++Label;
				int t = ++Variable;
				generate_code()
				if(strcmp(child->right->token_name, "AND") == 0)
				{
					child->true_label = label;
					child->false_label = cur->false_label;
				}
				else if(strcmp(child->right->token_name, "OR") == 0)
				{
					child->true_label = cur->true_label;
					child->false_label = label;
				}
				parse_tree(child);
				generate_code(codeE, cur->false_label, child->var_no, t0);
                generate_code(codeLABEL, label, 0, 0);
                child->right->right->true_label = cur->true_label;
                child->right->right->false_label = cur->false_label;
                parse_tree(child->right->right);
				generate_code(codeE, cur->false_label, child->right->right->var_no, t0);
				generate

			}
			//translate
			if(child->type != NULL && child->right != NULL)
			{
				if(!(is_type_equal(child->type, Int) && is_type_equal(child->right->right->type, Int)))raise_error(7, cur->lineno);
				else cur->type = Int;
			}
		}
		else if(strcmp(child->right->token_name, "PLUS") == 0 || strcmp(child->right->token_name, "MINUS") == 0 || strcmp(child->right->token_name, "STAR") == 0 || strcmp(child->right->token_name, "DIV") == 0)
		{
			parse_tree(child);
            parse_tree(child->right->right);
			if(!((is_type_equal(child->type, Int) == 1 && is_type_equal(child->right->right->type, Int)) || (is_type_equal(child->type, Float) == 1 && is_type_equal(child->right->right->type, Float))))raise_error(7, cur->lineno);
			else 
			{
				cur->type = child->type;
				//translate
				cur->var_no = ++Variable;
				generate_code(codeADD, cur->var_no, child->var_no, child->right->right->var_no);
			}
		}
		else if(strcmp(child->token_name, "LP") == 0)
		{
			parse_tree(child->right);
			cur->type = child->right->type;
		}
		else if(strcmp(child->token_name, "MINUS") == 0)
		{
			parse_tree(child->right);
			if(!(is_type_equal(child->right->type, Int) == 1 || is_type_equal(child->right->type, Float) == 1))raise_error(7, cur->lineno);
            else 
			{
				cur->type = child->right->type;
				//translate
				cur->var_no = ++Variable;
				generate_code(codeSUB, cur->var_no, t0, child->right->var_no);
			}
		}
		else if(strcmp(child->token_name, "NOT") == 0)
		{
			//translate
			child->right->true_label = cur->false_label;
			child->right->false_label = cur->true_label;
			//translate
			parse_tree(child->right);
			if(is_type_equal(child->right->type, Int) == 0)raise_error(7, cur->lineno);	
			else cur->type = Int;
		}
		else if(strcmp(child->right->token_name, "LP") == 0)
		{
			struct entry_t *e = hash_search(child->text);
            if(e == NULL)raise_error(2, cur->lineno);
			else if(e->type->kind != FUNCTION)raise_error(11, cur->lineno);
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
			else if(child->type != NULL && child->type->kind != ARRAY)raise_error(10, cur->lineno);
			else if(child->type != NULL)cur->type = child->type->array->elem;
			//child->type== NULL
		}
		else if(strcmp(cur->left->right->token_name, "DOT") == 0)
		{
			parse_tree(child);
			if(child->type == NULL)return; //child->type == NULL
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
		if(child->type == NULL)return;//child->type == NULL;
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
