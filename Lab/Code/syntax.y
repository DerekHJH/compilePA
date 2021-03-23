%{
	#include "lex.yy.c"
	int yyerror(char* msg);
%}

%union
{
	int type_int;
	float type_float;
	double type_double;
}


%token SEMI COMMA ASSIGNOP RELOP 
%token PLUS MINUS STAR DIV 
%token AND OR DOT NOT 
%token TYPE 
%token LP RP LB RB LC RC
%token STRUCT RETURN IF ELSE WHILE
%token <type_int> INT 
%token <type_float> FLOAT 
%token ID

%type <type_double> Exp Factor Term

%%
Calc: 
| Exp {printf("Calc: Exp.......expression = %f\n", $1); YYLTYPE haha = @1; printf("location of final expression is %d %d %d %d\n", haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
;
Exp: Factor {$$ = $1;
printf("Exp: Factor %lf\n", $1);}
| Exp PLUS Factor {$$ = $1 + $3; 
YYLTYPE haha = @2; printf("Exp: Exp PLUS Factor %lf......location of plus is %d %d %d %d\n", $$, haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
| Exp MINUS Factor {$$ = $1 - $3; 
printf("Exp: Exp MINUS Factor %lf\n", $$);}
;
Factor: Term {$$ = $1;
printf("Factor: Term %lf\n", $$);}
| Factor STAR Term {$$ = $1 * $3; 
printf("Factor: Factor STAR Term %lf\n", $$);}
| Factor DIV Term {$$ = $1 / $3; 
printf("Factor: Factor DIV Term %lf\n", $$);}
;
Term: INT {$$ = $1;
printf("Term: INT %d\n", $1);}
| FLOAT	{$$ = $1;
printf("Term: FLOAT %f\n", $1);
YYLTYPE haha = @1; printf("location of float is %d %d %d %d\n", haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
;
%%
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}
