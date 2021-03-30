%{
	#include "lex.yy.c"
	#include "syntax.tab.h"
	int yyerror(char* msg);
	void insert_node(struct _node *father, struct _node *child);
	struct node * Root = NULL;
%}

%union
{
	int type_int;
	float type_float;
	double type_double; 
	struct _node* type_node;
}


%locations
%token <type_node> SEMI COMMA ASSIGNOP RELOP 
%token <type_node> PLUS MINUS STAR DIV 
%token <type_node> AND OR DOT NOT 
%token <type_node> TYPE 
%token <type_node> LP RP LB RB LC RC
%token <type_node> STRUCT RETURN IF ELSE WHILE
%token <type_node> INT 
%token <type_node> FLOAT 
%token <type_node> ID

%type <type_node> Program ExtDefList ExtDef ExtDecList
%type <type_node> Specifier StructSpecifier OptTag Tag
%type <type_node> VarDec FunDec VarList ParamDec
%type <type_node> CompSt StmtList Stmt 
%type <type_node> DefList Def DecList Dec 
%type <type_node> Exp Args

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
Program: ExtDefList {$$ = make_node("Program", NULL, yylineno); insert_node($$, $1); Root = $$;}
;
ExtDefList: {$$ = make_node("ExtDefList", NULL, yylineno); }
| ExtDef ExtDefList {$$ = make_node("ExtDefList", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
;
ExtDef: Specifier ExtDecList SEMI {$$ = make_node("ExtDef", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Specifier SEMI {$$ = make_node("ExtDef", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
| Specifier FunDec CompSt {$$ = make_node("ExtDef", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
ExtDecList: VarDec {$$ = make_node("ExtDecList", NULL, yylineno); insert_node($$, $1);}
| VarDec COMMA ExtDecList {$$ = make_node("ExtDecList", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;


Specifier: TYPE {$$ = make_node("Specifier", NULL, yylineno); insert_node($$, $1);}
| StructSpecifier {$$ = make_node("Specifier", NULL, yylineno); insert_node($$, $1);}
;
StructSpecifier: STRUCT OptTag LC DefList RC {$$ = make_node("StructSpecifier", NULL, yylineno); insert_node($$, $5); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| STRUCT Tag {$$ = make_node("StructSpecifier", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
;
OptTag: {$$ = make_node("OptTag", NULL, yylineno); }
| ID {$$ = make_node("OptTag", NULL, yylineno); insert_node($$, $1);}
;
Tag: ID {$$ = make_node("Tag", NULL, yylineno); insert_node($$, $1);}
;


VarDec: ID {$$ = make_node("VarDec", NULL, yylineno); insert_node($$, $1);}
| VarDec LB INT RB {$$ = make_node("VarDec", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
FunDec: ID LP VarList RP {$$ = make_node("FunDec", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| ID LP RP {$$ = make_node("FunDec", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
VarList: ParamDec COMMA VarList {$$ = make_node("VarList", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| ParamDec {$$ = make_node("VarList", NULL, yylineno); insert_node($$, $1);}
;
ParamDec: Specifier VarDec {$$ = make_node("ParamDec", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
;


CompSt: LC DefList StmtList RC {$$ = make_node("ComSt", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
StmtList: {$$ = make_node("StmtList", NULL, yylineno); }
| Stmt StmtList {$$ = make_node("StmtList", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
;
Stmt: Exp SEMI {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
| CompSt {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $1);}
| RETURN Exp SEMI {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| IF LP Exp RP Stmt ELSE Stmt {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $7); insert_node($$, $6); insert_node($$, $5); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| WHILE LP Exp RP Stmt {$$ = make_node("Stmt", NULL, yylineno); insert_node($$, $5); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;


DefList: {$$ = make_node("DefList", NULL, yylineno); }
| Def DefList {$$ = make_node("DefList", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
;
Def: Specifier DecList SEMI {$$ = make_node("Def", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
DecList: Dec {$$ = make_node("DecList", NULL, yylineno); insert_node($$, $1);}
| Dec COMMA DecList {$$ = make_node("DecList", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;
Dec: VarDec {$$ = make_node("Dec", NULL, yylineno); insert_node($$, $1);}
| VarDec ASSIGNOP Exp {$$ = make_node("Dec", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
;

Exp: Exp ASSIGNOP Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp AND Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp OR Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp RELOP Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp PLUS Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp MINUS Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp STAR Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp DIV Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| LP Exp RP {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| MINUS Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
| NOT Exp {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $2); insert_node($$, $1);}
| ID LP Args RP {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| ID LP RP {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp LB Exp RB {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $4); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp DOT ID {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| ID {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $1);
printf("location of ID is %d %d %d %d\n", @1.first_line, @1.last_line, @1.first_column, @1.last_column);
}
| INT {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $1);}
| FLOAT {$$ = make_node("Exp", NULL, yylineno); insert_node($$, $1);}
;
Args: Exp COMMA Args {$$ = make_node("Args", NULL, yylineno); insert_node($$, $3); insert_node($$, $2); insert_node($$, $1);}
| Exp {$$ = make_node("Args", NULL, yylineno); insert_node($$, $1);}
;


%%
void insert_node(struct _node *father, struct _node *child)
{
	child->right = father->left;
	father->left = child;

}
int yyerror(char *msg)
{
	fprintf(stderr, "error: %s\n", msg);
}
