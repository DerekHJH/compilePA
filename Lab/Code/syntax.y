%{
	#include "lex.yy.c"
	int yyerror(char* msg);
	typedef struct
	{
		union
		{
			int int_val;
			float float_val;
		};
		int token_id;
		char name[15];
	}_node;
%}

%union
{
	int type_int;
	float type_float;
	double type_double; 
	_node *type_node;
}


%token <type_node> SEMI COMMA ASSIGNOP RELOP 
%token <type_node> PLUS MINUS STAR DIV 
%token <type_node> AND OR DOT NOT 
%token <type_node> TYPE 
%token <type_node> LP RP LB RB LC RC
%token <type_node> STRUCT RETURN IF ELSE WHILE
%token <type_node> INT 
%token <type_node> FLOAT 
%token <type_node> ID

%type <type_node> Exp

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
Program: ExtDefList {//printf("right!\n");
}
;
ExtDefList: 
| ExtDef ExtDefList
;
ExtDef: Specifier ExtDecList SEMI
| Specifier SEMI
| Specifier FunDec CompSt {//printf("Specifer FunDec Compt\n");
}
;
ExtDecList: VarDec
| VarDec COMMA ExtDecList
;


Specifier: TYPE {//printf("Type\n");
}
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
| Exp AND Exp {$$ = $1;}
| Exp OR Exp {$$ = $1;}
| Exp RELOP Exp {}
| Exp PLUS Exp {$$ = $1;}
| Exp MINUS Exp {$$ = $1;}
| Exp STAR Exp {$$ = $1;}
| Exp DIV Exp {$$ = $1;}
| LP Exp RP {$$ = $1;}
| MINUS Exp {$$ = $1;}
| NOT Exp {$$ = $1;}
| ID LP Args RP {}
| ID LP RP {}
| Exp LB Exp RB {}
| Exp DOT ID {}
| ID {//printf("ID\n");
}
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
