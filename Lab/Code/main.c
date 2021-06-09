#include <stdio.h>
#include <stdlib.h>
#include "common.h"
extern FILE* yyin;
extern int yyparse();
extern struct _node *Root;
void Parse_Tree(struct _node *cur);
FILE *fp = NULL;
void code_optimize();
void print_mips();
void print_code();

int optimize_flag = 1;
int main(int argc, char** argv)
{
	if(argc == 3)
	{
		if(!(yyin = fopen(argv[1], "r")))
		{
			perror(argv[1]);
			return 1;
		}
		if((fp = fopen(argv[2], "w+")) == NULL)
		{
			perror(argv[2]);
			return 1;
		}
		yyparse();
        Parse_Tree(Root);
		if(optimize_flag == 1)code_optimize();
		print_mips();
		fclose(fp);
	}
	else 
	{
		fprintf(stderr, "Argument error!\n");
		return 1;
	}
	return 0;
}
