#include "common.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MALLOC(arg1, arg2) \
	arg2 *arg1 = malloc(sizeof(arg2));\
	memset(arg1, 0, sizeof(arg2))

struct intercode_t *code_head = NULL;
void code_insert(struct intercode_t *code)
{
	code->next = code_head;
	code->prev = code_head->prev;
	code_head->prev->next = code;
	code_head->prev = code;
}
void generate_code()
{
	MALLOC(temp, struct intercode_t);
	//TODO();


	code_insert(temp);
}
void print_code()
{
	struct intercode_t *temp = code_head->next;
	while(temp != code_head)
	{
		//TODO();
	}
}
