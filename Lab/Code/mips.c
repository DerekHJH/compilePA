#include <stdio.h>
#include "common.h"
#include <string.h>
#include <stdlib.h>
#include <assert.h>
extern struct intercode_t *code_head;
extern FILE *fp;
extern int Variable, Function;
int *param_begin = NULL;
int *param_size = NULL;
int in_which_func = 0;
void before_funcall()
{
	fprintf(fp, "addi $sp, $sp, -8\n");
	fprintf(fp, "sw $fp, 4($sp)\n");
	fprintf(fp, "sw $ra, 0($sp)\n");
	fprintf(fp, "move $fp, $sp\n");
}

void after_funcall()
{
	fprintf(fp, "lw $fp, 4($sp)\n");
	fprintf(fp, "lw $ra, 0($sp)\n");
	fprintf(fp, "addi $sp, $sp, 8\n");
}
void value_load(int reg_no, int var_no)
{
	fprintf(fp, "la $t0, _data\n");
	fprintf(fp, "addi $t0, $t0, %d\n", var_no * 4);
	if(reg_no != 0)fprintf(fp, "lw $t%d, 0($t0)\n", reg_no);
	else fprintf(fp, "lw, $v%d, 0($t0)\n", reg_no);
}

void value_store(int reg_no, int var_no)
{
	fprintf(fp, "la $t0, _data\n");
	fprintf(fp, "addi $t0, $t0, %d\n", var_no * 4);
	if(reg_no != 0)fprintf(fp, "sw $t%d, 0($t0)\n", reg_no);
	else fprintf(fp, "sw $v%d, 0($t0)\n", reg_no);
}
void param_save()
{
	int p_begin = param_begin[in_which_func];
	int p_size = param_size[in_which_func];
	int p_end = p_begin + p_size;
	fprintf(fp, "addi $sp, $sp, -%d\n", p_size * 4);
	for(int i = p_begin; i < p_end; i++)
	{
		value_load(1, i);
		fprintf(fp, "sw $t1, %d($sp)\n", 4 * (i - p_begin));
	}
}
void param_restore()
{
	int p_begin = param_begin[in_which_func];
    int p_size = param_size[in_which_func];
    int p_end = p_begin + p_size;
    for(int i = p_begin; i < p_end; i++)
    {
    	fprintf(fp, "lw $t1, %d($sp)\n", 4 * (i - p_begin));
		value_store(1, i);
    }
    fprintf(fp, "addi $sp, $sp, %d\n", p_size * 4);
}

//we only use t1, t2, t3 for ourselves and use t0 for special purpose. when reg_no is 0,it means v0
void print_mips()
{
	param_begin = malloc(sizeof(int) * (Function + 1));
	param_size = malloc(sizeof(int) * (Function + 1));
	memset(param_begin, 0, sizeof(int) * (Function + 1));
	memset(param_size, 0, sizeof(int) * (Function + 1));

	fprintf(fp, ".data\n_prompt: .asciiz \"Please throw me a number:\"\n_ret: .asciiz \"\\n\"\n_data: .space %d\n.globl main\n.text\nread:\nli $v0, 4\nla $a0, _prompt\nsyscall\nli $v0, 5\nsyscall\njr $ra\n\nwrite:\nli $v0, 1\nsyscall\nli $v0, 4\nla $a0, _ret\nsyscall\nmove $v0, $0\njr $ra\n\n", Variable * 4);
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "L%d:\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			in_which_func = temp->result->value;
			if(temp->result->value == 1)fprintf(fp, "main:\n");
			else fprintf(fp, "F%d:\n", temp->result->value);
			int func_no = temp->result->value;
			while(temp->next != code_head && temp->next->kind == codePARAM)
			{
				if(param_size[func_no] == 0)param_begin[func_no] = temp->next->result->value;
				param_size[func_no]++;
				temp = temp->next;
			}
		}
		else if(temp->kind == codeASSIGN)
		{
			if(temp->op2->value != 0)fprintf(fp, "li $t1, %d\n", temp->op1->value);
            else value_load(1, temp->op1->value);	
			value_store(1, temp->result->value);
		}
		else if(temp->kind >= codeADD && temp->kind <= codeDIV)
		{
			value_load(1, temp->op1->value);
			value_load(2, temp->op2->value);
			if(temp->kind == codeADD)fprintf(fp, "add $t3, $t1, $t2\n");
			else if(temp->kind == codeSUB)fprintf(fp, "sub $t3, $t1, $t2\n");
			else if(temp->kind == codeMUL)fprintf(fp, "mul $t3, $t1, $t2\n");
			else if(temp->kind == codeDIV)
			{
				fprintf(fp, "div $t1, $t2\n");
				fprintf(fp, "mflo $t3\n");
			}
			value_store(3, temp->result->value);
		}
		else if(temp->kind == codeAND)
		{
			fprintf(fp, "la $t1, _data\n");
            fprintf(fp, "addi $t1, $t1, %d\n", temp->op1->value * 4);
			value_store(1, temp->result->value);
		}
		else if(temp->kind == codeRSTAR)
		{
			value_load(1, temp->op1->value);
			fprintf(fp, "lw $t2, 0($t1)\n");
			value_store(2, temp->result->value);
		}
		else if(temp->kind == codeLSTAR)
		{
			value_load(1, temp->op1->value);
			value_load(2, temp->result->value);
			fprintf(fp, "sw $t1, 0($t2)\n");
		}
		else if(temp->kind == codeGOTO)fprintf(fp, "j L%d\n", temp->result->value);
		else if(temp->kind >= codeE && temp->kind <= codeLE)
		{
			value_load(1, temp->op1->value);
            value_load(2, temp->op2->value);
			if(temp->kind == codeE)fprintf(fp, "beq $t1, $t2, L%d\n", temp->result->value);	
			else if(temp->kind == codeNE)fprintf(fp, "bne $t1, $t2, L%d\n", temp->result->value);	
			else if(temp->kind == codeG)fprintf(fp, "bgt $t1, $t2, L%d\n", temp->result->value);	
			else if(temp->kind == codeGE)fprintf(fp, "bge $t1, $t2, L%d\n", temp->result->value);	
			else if(temp->kind == codeL)fprintf(fp, "blt $t1, $t2, L%d\n", temp->result->value);	
            else if(temp->kind == codeLE)fprintf(fp, "ble $t1, $t2, L%d\n", temp->result->value);	
		}
		else if(temp->kind == codeRETURN)
		{
			value_load(0, temp->result->value);
			fprintf(fp, "jr $ra\n");
		}
		else if(temp->kind == codeDEC)fprintf(fp, "DEC t%d %d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeARG)
		{
			param_save();	
			struct intercode_t *find_func = temp;
			while(find_func != code_head && find_func->kind != codeCALL)find_func = find_func->next;
			int p_size = param_size[find_func->op1->value];
			int p_begin = param_begin[find_func->op1->value];
			int p_end = p_begin + p_size;
			while(temp->next != code_head && temp->next->kind == codeARG)
			{
				assert(p_begin < p_end);
				value_load(1, temp->next->result->value);
				value_store(1, p_begin);
				p_begin++;
				temp = temp->next;
			}
		}
		else if(temp->kind == codeCALL)
		{
			before_funcall();
			if(temp->op1->value == 1)fprintf(fp, "jal main\n");
			else  fprintf(fp, "jal F%d\n", temp->op1->value);
			after_funcall();
			param_restore();
			value_store(0, temp->result->value);
		}
		else if(temp->kind == codeREAD)
		{
			before_funcall();
			fprintf(fp, "jal read\n");
			after_funcall();
			value_store(0, temp->result->value);
		}
		else if(temp->kind == codeWRITE)
		{
			value_load(1, temp->result->value);
			fprintf(fp, "move $a0, $t1\n");
			before_funcall();
            fprintf(fp, "jal write\n");
            after_funcall();
		}
		temp = temp->next;
	}
	free(param_begin);
	free(param_size);
}
