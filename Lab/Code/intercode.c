#include "common.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#define MALLOC(arg1, arg2) \
	arg2 *arg1 = malloc(sizeof(arg2));\
	memset(arg1, 0, sizeof(arg2))

struct intercode_t *code_head = NULL;
int Label = 0, Variable = 0, Function = 3;
extern FILE *fp;
void code_insert(struct intercode_t *code)
{
	code->next = code_head;
	code->prev = code_head->prev;
	code_head->prev->next = code;
	code_head->prev = code;
}
void code_delete(struct intercode_t *code)
{
	assert(code->prev != code);
	code->prev->next = code->next;
	code->next->prev = code->prev;
}

void generate_code(int kind, int result, int op1, int op2)
{
	MALLOC(temp, struct intercode_t);
	MALLOC(temp1, struct operand_t);
	MALLOC(temp2, struct operand_t);
	MALLOC(temp3, struct operand_t);
	temp->kind = kind;
	temp1->value = result;
	temp2->value = op1;
	temp3->value = op2;
	if((kind == codeASSIGN && op2 == 1) || kind == codeDEC)temp2->kind = opCONSTANT;	
	temp->result = temp1;
	temp->op1 = temp2;
	temp->op2 = temp3;
	code_insert(temp);
}
void code_optimize()
{
}

void print_code()
{
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "LABEL L%d :\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			if(temp->result->value == 1)fprintf(fp, "FUNCTION main :\n");
			else fprintf(fp, "FUNCTION F%d :\n", temp->result->value);
		}
		else if(temp->kind == codeASSIGN)
		{
			if(temp->op2->value != 0)fprintf(fp, "t%d := #%d\n", temp->result->value, temp->op1->value);
			else fprintf(fp, "t%d := t%d\n", temp->result->value, temp->op1->value);
		}
		else if(temp->kind == codeADD)fprintf(fp, "t%d := t%d + t%d\n", temp->result->value, temp->op1->value, temp->op2->value);//only t1 = t2 + t3 is allowed: variable = variable + variable, no constant is involved
		else if(temp->kind == codeSUB)fprintf(fp, "t%d := t%d - t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeMUL)fprintf(fp, "t%d := t%d * t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeDIV)fprintf(fp, "t%d := t%d / t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
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
		else if(temp->kind == codeREAD)fprintf(fp, "READ t%d\n", temp->result->value);
		else if(temp->kind == codeWRITE)fprintf(fp, "WRITE t%d\n", temp->result->value);
		temp = temp->next;
	}
}

void print_mips()
{
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "LABEL L%d :\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			if(temp->result->value == 1)fprintf(fp, "FUNCTION main :\n");
			else fprintf(fp, "FUNCTION F%d :\n", temp->result->value);
		}
		else if(temp->kind == codeASSIGN)
		{
			if(temp->op2->value != 0)fprintf(fp, "t%d := #%d\n", temp->result->value, temp->op1->value);
			else fprintf(fp, "t%d := t%d\n", temp->result->value, temp->op1->value);
		}
		else if(temp->kind == codeADD)fprintf(fp, "t%d := t%d + t%d\n", temp->result->value, temp->op1->value, temp->op2->value);//only t1 = t2 + t3 is allowed: variable = variable + variable, no constant is involved
		else if(temp->kind == codeSUB)fprintf(fp, "t%d := t%d - t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeMUL)fprintf(fp, "t%d := t%d * t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeDIV)fprintf(fp, "t%d := t%d / t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
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
		else if(temp->kind == codeREAD)fprintf(fp, "READ t%d\n", temp->result->value);
		else if(temp->kind == codeWRITE)fprintf(fp, "WRITE t%d\n", temp->result->value);
		temp = temp->next;
	}
}

