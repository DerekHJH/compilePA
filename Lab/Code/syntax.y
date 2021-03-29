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

%type <type_double> Exp

%right ASSIGNOP
%left OR
%left AND
%left RELOP 
%left PLUS
%left STAR DIV
%right MINUS NOT
%left LP RP LB RB DOT

%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE






%%
Program: ExtDefList {printf("right!\n");}
;
ExtDefList: 
| ExtDef ExtDefList
;
ExtDef: Specifier ExtDecList SEMI
| Specifier SEMI
| Specifier FunDec CompSt {printf("Specifer FunDec Compt\n");}
;
ExtDecList: VarDec
| VarDec COMMA ExtDecList
;


Specifier: TYPE {printf("Type\n");}
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
| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE
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

Exp: Exp ASSIGNOP Exp {$$ = ($1 = $3);
printf("expression = %f\n", $$); YYLTYPE haha = @1; printf("location of expression is %d %d %d %d\n", haha.first_line, haha.last_line, haha.first_column, haha.last_column);}
| Exp AND Exp {$$ = ($1 && $3);}
| Exp OR Exp {$$ = ($1 || $3);}
| Exp RELOP Exp {}
| Exp PLUS Exp {$$ = $1 + $3;}
| Exp MINUS Exp {$$ = $1 - $3;}
| Exp STAR Exp {$$ = $1 * $3;}
| Exp DIV Exp {$$ = $1 / $3;}
| LP Exp RP {$$ = ($2);}
| MINUS Exp {$$ = -($2);}
| NOT Exp {$$ = !($2);}
| ID LP Args RP {}
| ID LP RP {}
| Exp LB Exp RB {}
| Exp DOT ID {}
| ID {printf("ID\n");}
| INT {//printf("INT is %d\n", $1);
$$ = $1;}
| FLOAT {//printf("FLOAT is %f\n", $1);
$$ = $1;}
;
Args: Exp COMMA Args
| Exp
;


%%
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}
