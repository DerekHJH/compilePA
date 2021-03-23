#include <stdio.h>
extern FILE* yyin;
extern int yylex();
extern int yyparse();
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
	//yylex();
	yyparse();
	return 0;
}




