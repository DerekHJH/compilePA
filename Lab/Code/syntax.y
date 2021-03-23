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

%right ASSIGNOP
%left PLUS MINUS
%left STAR DIV
%left LP RP

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE






%%
Program: ExtDefList
;
ExtDefList: 
| ExtDef ExtDefList
;
ExtDef: Specifier ExtDecList SEMI
| Specifier SEMI
| Specifier FunDec CompSt
;
ExtDecList: VarDec
| VarDec COMMA ExtDecList
;


Specifier: TYPE
| StructSpecifier
;
StructSpecifier: STRUCT OptTag LC DefList RC
| STRUCT Tag
;
OptTag: 
| ID
;
Tag: ID
;


VarDec: ID
| VarDec LB INT RB
;
FunDec: ID LP VarList RP
| ID LP RP
;
VarList: ParamDec COMMA VarList
| ParamDec
;
ParamDec: Specifier VarDec
;


CompSt: LC DefList StmtList RC
;
StmtList: 
| Stmt StmtList
;
Stmt: Exp SEMI
| CompSt
| RETURN Exp SEMI
| IF LP Exp RP Stmt
| IF LP Exp RP Stmt ELSE Stmt
| WHILE LP Exp RP Stmt
;







Calc: 
| Exp {printf("Calc: Exp.......expression = %f\n", $1); YYLTYPE haha = @1; printf("location of final expression is %d %d %d %d\n", haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
;
Exp: Factor {$$ = $1;}
| Exp PLUS Factor {$$ = $1 + $3;}
| Exp MINUS Factor {$$ = $1 - $3;}
;
Factor: Term {$$ = $1;}
| Factor STAR Term {$$ = $1 * $3;}
| Factor DIV Term {$$ = $1 / $3;}
;
Term: INT {$$ = $1;}
| FLOAT	{$$ = $1;}
;
%%
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}
