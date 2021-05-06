#include "common.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MALLOC(arg1, arg2) \
	arg2 *arg1 = malloc(sizeof(arg2));\
	memset(arg1, 0, sizeof(arg2))

struct intercode_t *code_head = NULL;
int Label = 0, Variable = 2, Function = 0, t0 = 1, t1 = 2;
void code_insert(struct intercode_t *code)
{
	code->next = code_head;
	code->prev = code_head->prev;
	code_head->prev->next = code;
	code_head->prev = code;
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
	if(kind == codeASSIGN || kind == codeDEC)temp2->kind = CONSTANT;	
	temp->result = temp1;
	temp->op1 = temp2;
	temp->op2 = temp3;
	code_insert(temp);
}
void print_code()
{
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)printf("LABEL L%d :\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)printf("FUNCTION F%d :\n", temp->result->value);
		else if(temp->kind == codeASSIGN)printf("t%d := %d\n", temp->result->value, temp->op1->value);//only t = #5 is allowed: variable = constant
		else if(temp->kind == codeADD)printf("t%d := t%d + t%d\n", temp->result->value, temp->op1->value, temp->op2->value);//only t1 = t2 + t3 is allowed: variable = variable + variable, no constant is involved
		else if(temp->kind == codeSUB)printf("t%d := t%d - t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeMUL)printf("t%d := t%d * t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeDIV)printf("t%d := t%d / t%d\n", temp->result->value, temp->op1->value, temp->op2->value);
		else if(temp->kind == codeAND)printf("t%d := &t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeRSTAR)printf("t%d := *t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeLSTAR)printf("t%d := *t%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeGOTO)printf("GOTO L%d :\n", temp->result->value);
		else if(temp->kind == codeE)printf("IF t%d == t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeNE)printf("IF t%d != t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeG)printf("IF t%d > t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeGE)printf("IF t%d >= t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeL)printf("IF t%d < t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeLE)printf("IF t%d <= t%d GOTO L%d\n", temp->op1->value, temp->op2->value, temp->result->value);	
		else if(temp->kind == codeRETURN)printf("RETURN t%d\n", temp->result->value);
		else if(temp->kind == codeDEC)printf("DEC t%d %d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codeARG)printf("ARG t%d\n", temp->result->value);
		else if(temp->kind == codeCALL)printf("t%d := CALL F%d\n", temp->result->value, temp->op1->value);
		else if(temp->kind == codePARAM)printf("PARAM t%d\n", temp->result->value);
		else if(temp->kind == codeREAD)printf("READ t%d\n", temp->result->value);
		else if(temp->kind == codeWRITE)printf("WRITE t%d\n", temp->result->value);
	}
}
