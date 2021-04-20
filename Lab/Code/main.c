#include <stdio.h>
#include "common.h"
extern FILE* yyin;
extern int yyparse();
extern struct _node *Root;
void parse_tree(struct _node *cur);
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
	parse_tree(Root);
	return 0;
}




