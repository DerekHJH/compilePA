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


DefList: 
| Def DefList
;
Def: Specifier DecList SEMI
;
DecList: Dec
| Dec COMMA DecList
;
Dec: VarDec
| VarDec ASSIGNOP Exp
;

Exp: Exp ASSIGNOP Exp {printf("Calc: Exp.......expression = %f\n", $1); YYLTYPE haha = @1; printf("location of final expression is %d %d %d %d\n", haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
| Exp AND Exp
| Exp OR Exp
| Exp RELOP Exp
| Exp PLUS Exp
| Exp MINUS Exp
| Exp STAR Exp
| Exp DIV Exp
| LP Exp RP
| MINUS Exp
| NOT Exp
| ID LP Args RP
| ID LP RP
| Exp LB Exp RB
| Exp DOT ID
| ID
| INT
| FLOAT
;
Args: Exp COMMA Args
| Exp
;


%%
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}
