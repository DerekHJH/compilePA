%{
	#include "lex.yy.c"
	int yyerror(char* msg);
%}

%token SEMI COMMA ASSIGNOP RELOP 
%token PLUS MINUS STAR DIV 
%token AND OR DOT NOT 
%token TYPE 
%token LP RP LB RB LC RC
%token STRUCT RETURN IF ELSE WHILE
%token INT FLOAT ID

%%
Calc: 
| Exp {printf("expression = %d\n", $1);}
;
Exp: Factor
| Exp PLUS Factor {$$ = $1 + $2;}
| Exp MINUS Factor {$$ = $1 - $3;}
;
Factor: INT
| Factor STAR INT {$$ = $1 * $3;}
| Factor DIV INT {$$ = $1 / $3;}
;
%%
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}