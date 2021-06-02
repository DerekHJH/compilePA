#include <stdio.h>
#include "common.h"
extern struct intercode_t *code_head;
extern FILE *fp;
void print_mips()
{
	fprintf(fp, ".data\n_prompt: .asciiz \"Please fuck me a number:\"\n_ret: .asciiz \"\\n\"\n.globl main\n.text\nread:\nli $v0, 4\nla $a0, _prompt\nsyscall\nli $v0, 5\nsyscall\njr $ra\n\nwrite:\nli $v0, 1\nsyscall\nli $v0, 4\nla $a0, _ret\nsyscall\nmove $v0, $0\njr $ra\n\n");
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		if(temp->kind == codeLABEL)fprintf(fp, "label%d:\n", temp->result->value);
		else if(temp->kind == codeFUNCTION)
		{
			if(temp->result->value == 1)fprintf(fp, "FUNCTION main :\n");
			else fprintf(fp, "FUNCTION F%d :\n", temp->result->value);
		}
		else if(temp->kind == codeASSIGN)
		{
			if(temp->op2->value != 0)fprintf(fp, "li \n", temp->result->value, temp->op1->value);
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

