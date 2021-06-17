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
int *var_begin = NULL;
int *var_end = NULL;
int in_which_func = 0;
void before_funcall(int funNo)
{
	fprintf(fp, "move $t0, $sp\n");
	fprintf(fp, "addi $sp, $sp, -8\n");
	fprintf(fp, "sw $fp, 4($sp)\n");
	fprintf(fp, "sw $ra, 0($sp)\n");
	fprintf(fp, "addi $sp, $sp, -%d\n", (var_end[funNo] - var_begin[funNo]) * 4);
	fprintf(fp, "move $fp, $sp\n");
	for(int i = 0; i < param_size[funNo]; i++)
	{
		fprintf(fp, "lw $t1, %d($t0)\n", i * 4);
		fprintf(fp, "sw $t1, %d($fp)\n", i * 4);
	}
}

void after_funcall(int funNo)
{
	fprintf(fp, "move $sp, $fp\n");	
	fprintf(fp, "addi $sp, $sp, %d\n", (var_end[funNo] - var_begin[funNo]) * 4);
	fprintf(fp, "lw $fp, 4($sp)\n");
	fprintf(fp, "lw $ra, 0($sp)\n");
	fprintf(fp, "addi $sp, $sp, 8\n");
}
void value_load(int reg_no, int var_no)
{
	var_no -= var_begin[in_which_func];
	if(reg_no != 0)fprintf(fp, "lw $t%d, %d($fp)\n", reg_no, var_no * 4);
	else fprintf(fp, "lw, $v%d, %d($fp)\n", reg_no, var_no * 4);
}

void value_store(int reg_no, int var_no)
{
	var_no -= var_begin[in_which_func];
	if(reg_no != 0)fprintf(fp, "sw $t%d, %d($fp)\n", reg_no, var_no * 4);
	else fprintf(fp, "sw $v%d, %d($fp)\n", reg_no, var_no * 4);
}
//we only use t1, t2, t3 for ourselves and use t0 for special purpose. when reg_no is 0,it means v0
void print_mips()
{
	param_begin = malloc(sizeof(int) * (Function + 1));
	param_size = malloc(sizeof(int) * (Function + 1));
	memset(param_begin, 0, sizeof(int) * (Function + 1));
	memset(param_size, 0, sizeof(int) * (Function + 1));

	var_begin = malloc(sizeof(int) * (Function + 1));
    var_end = malloc(sizeof(int) * (Function + 1));
	memset(var_begin, 0, sizeof(int) * (Function + 1));
    memset(var_end, 0, sizeof(int) * (Function + 1));

	fprintf(fp, ".data\n_prompt: .asciiz \"Enter an integer:\"\n_ret: .asciiz \"\\n\"\n.globl main\n.text\nread:\nli $v0, 4\nla $a0, _prompt\nsyscall\nli $v0, 5\nsyscall\njr $ra\n\nwrite:\nli $v0, 1\nsyscall\nli $v0, 4\nla $a0, _ret\nsyscall\nmove $v0, $0\njr $ra\n\n");
	struct intercode_t *temp = code_head->next;
	in_which_func = 0;
	while(temp != code_head)
	{
		if(temp->kind == codeFUNCTION)
		{
			if(in_which_func != 0)var_end[in_which_func] = temp->op1->value;		
			in_which_func = temp->result->value;
			var_begin[in_which_func] = temp->op1->value;
			while(temp->next != code_head && temp->next->kind == codePARAM)
            {
            	if(param_size[in_which_func] == 0)param_begin[in_which_func] = temp->next->result->value;
            	param_size[in_which_func]++;
            	temp = temp->next;
            }
		}
		temp = temp->next;
	}
	var_end[in_which_func] = Variable + 1;

	in_which_func = 0;
	temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "L%d:\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			in_which_func = temp->result->value;
			if(temp->result->value == 1)fprintf(fp, "main:\n");
			else fprintf(fp, "F%d:\n", temp->result->value);	
			if(temp->result->value == 1)before_funcall(1);
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
			value_load(1, temp->op1->value);	
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
			if(in_which_func == 1)after_funcall(1);
			fprintf(fp, "jr $ra\n");
		}
		else if(temp->kind == codeDEC)
		{
			fprintf(fp, "addi $sp, $sp, -%d\n", temp->op1->value);
			fprintf(fp, "move $t1, $sp\n");
			value_store(1, temp->result->value);
		}
		else if(temp->kind == codeARG)
		{
			value_load(1, temp->result->value);
			fprintf(fp, "addi $sp, $sp, -4\n");
			fprintf(fp, "sw $t1, 0($sp)\n");
			while(temp->next != code_head && temp->next->kind == codeARG)
			{
				value_load(1, temp->next->result->value);
				fprintf(fp, "addi $sp, $sp, -4\n");
                fprintf(fp, "sw $t1, 0($sp)\n");
				temp = temp->next;
			}
		}
		else if(temp->kind == codeCALL)
		{
			before_funcall(temp->op1->value);
			if(temp->op1->value == 1)fprintf(fp, "jal main\n");
			else  fprintf(fp, "jal F%d\n", temp->op1->value);
			after_funcall(temp->op1->value);
			value_store(0, temp->result->value);
		}
		else if(temp->kind == codeREAD)
		{
			before_funcall(2);
			fprintf(fp, "jal read\n");
			after_funcall(2);
			value_store(0, temp->result->value);
		}
		else if(temp->kind == codeWRITE)
		{
			value_load(1, temp->result->value);
			fprintf(fp, "move $a0, $t1\n");
			before_funcall(3);
            fprintf(fp, "jal write\n");
            after_funcall(3);
		}
		temp = temp->next;
	}
	free(param_begin);
	free(param_size);
	free(var_begin);
	free(var_end);
}
