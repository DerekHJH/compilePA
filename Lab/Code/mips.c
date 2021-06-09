#include <stdio.h>
#include "common.h"
extern struct intercode_t *code_head;
extern FILE *fp;
extern int Variable;
#define BEFORE_FUNCALL()\
do\
{\
	fprintf(fp, "addi $sp, $sp, -8\n");\
	fprintf(fp, "sw $fp, 4($sp)\n");\
	fprintf(fp, "sw $ra, 0($sp)\n");\
	fprintf(fp, "move $fp, $sp\n");\
}while(0)

#define AFTER_FUNCALL()\
do\
{\
	fprintf(fp, "lw $fp, 4($sp)\n");\
	fprintf(fp, "lw $ra, 0($sp)\n");\
	fprintf(fp, "addi $sp, $sp, 8\n");\
}while(0)

void value_load(int reg_no, int var_no)
{
	fprintf(fp, "la $t0, _data\n");
	fprintf(fp, "addi $t0, $t0, %d\n", var_no * 4);
	fprintf(fp, "lw $t%d, 0($t0)\n", reg_no);
}

void value_store(int reg_no, int var_no)
{
	fprintf(fp, "la $t0, _data\n");
	fprintf(fp, "addi $t0, $t0, %d\n", var_no * 4);
	if(reg_no != 0)fprintf(fp, "sw $t%d, 0($t0)\n", reg_no);
	else fprintf(fp, "sw $v%d, 0($t0)\n", reg_no);
}
//we only use t1, t2, t3 for ourselves and use t0 for special purpose. when reg_no is 0,it means v0
void print_mips()
{
	fprintf(fp, ".data\n_prompt: .asciiz \"Please throw me a number:\"\n_ret: .asciiz \"\\n\"\n_data: .space %d\n.globl main\n.text\nread:\nli $v0, 4\nla $a0, _prompt\nsyscall\nli $v0, 5\nsyscall\njr $ra\n\nwrite:\nli $v0, 1\nsyscall\nli $v0, 4\nla $a0, _ret\nsyscall\nmove $v0, $0\njr $ra\n\n", Variable * 4);
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "L%d:\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			if(temp->result->value == 1)fprintf(fp, "main:\n");
			else fprintf(fp, "F%d:\n", temp->result->value);
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
		else if(temp->kind == codeAND)fprintf(fp, "t%d := &t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeRSTAR)fprintf(fp, "t%d := *t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeLSTAR)fprintf(fp, "*t%d := t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeGOTO)fprintf(fp, "GOTO L%d\n", temp->result->value);
		else if(temp->kind == codeE)fprintf(fp, "IF t%d == t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeNE)fprintf(fp, "IF t%d != t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeG)fprintf(fp, "IF t%d > t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeGE)fprintf(fp, "IF t%d >= t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeL)fprintf(fp, "IF t%d < t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeLE)fprintf(fp, "IF t%d <= t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeRETURN)fprintf(fp, "RETURN t%d\n", temp->result->value);
		else if(temp->kind == codeDEC)fprintf(fp, "DEC t%d %d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeARG)fprintf(fp, "ARG t%d\n", temp->result->value);
		else if(temp->kind == codeCALL)
		{
			if(temp->op1->value == 1)fprintf(fp, "t%d := CALL main\n", temp->result->value);
			else fprintf(fp, "t%d := CALL F%d\n", temp->result->value, temp->op1->value);
		}
		else if(temp->kind == codePARAM)fprintf(fp, "PARAM t%d\n", temp->result->value);
		else if(temp->kind == codeREAD)
		{
			BEFORE_FUNCALL();
			fprintf(fp, "jal read\n");
			AFTER_FUNCALL();
			value_store(0, temp->result->value);
		}
		else if(temp->kind == codeWRITE)
		{
			value_load(1, temp->result->value);
			fprintf(fp, "move $a0, $t1\n");
			BEFORE_FUNCALL();
            fprintf(fp, "jal write\n");
            AFTER_FUNCALL();
		}
		temp = temp->next;
	}
}
