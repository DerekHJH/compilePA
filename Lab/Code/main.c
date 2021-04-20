#include <stdio.h>
#include "common.h"
extern FILE* yyin;
extern int yylex();
extern int yyparse();
extern int yydebug;
extern struct _node *Root;
int main(int argc, char** argv)
{
	if(argc > 1)
	{
		if(!(yyin = fopen(argv[1], "r")))
		{
			perror(argv[1]);
			return 1;
		}
	}
	yyparse();
	return 0;
}




