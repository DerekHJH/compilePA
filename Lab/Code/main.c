#include <stdio.h>
#include <stdlib.h>
#include "common.h"
extern FILE* yyin;
extern int yyparse();
extern struct _node *Root;
void Parse_Tree(struct _node *cur);
FILE *fp = NULL;
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
		fclose(fp);
	}
	else 
	{
		fprintf(stderr, "Argument error!\n");
		return 1;
	}
	
	
	return 0;
}




