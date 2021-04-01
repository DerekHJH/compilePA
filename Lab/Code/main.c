#include <stdio.h>
#include "common.h"
extern FILE* yyin;
extern int yylex();
extern int yyparse();
extern int yydebug;
void print_tree(struct _node *cur, int Width);
extern struct _node *Root;
int is_print_tree = 1;
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
	//yydebug = 1;
	//yylex();
	yyparse();
	if(is_print_tree == 1)print_tree(Root, 0);
	return 0;
}




