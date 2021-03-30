%{
	#include "syntax.tab.h"
	#include <stdlib.h>
	#include <string.h>
	int yycolumn = 1;
	#define YY_USER_ACTION \
	yylloc.first_line = yylloc.last_line = yylineno; \
	yylloc.first_column = yycolumn; \
	yylloc.last_column = yycolumn + yyleng - 1; \
	yycolumn += yyleng;
	
	#define MAKE_NODE_RETURN(token_name)\
	do\
	{\
		yylval.type_node = make_node(#token_name, yytext, yylineno); \
		return token_name;\
	}while(0)


	struct _node
    {
    	union
    	{
    		int int_val;
    		float float_val;
    	};
    	int lineno;
    	char text[64], token_name[32];
		struct _node *left;
		struct _node *right;
    };
	struct _node *make_node(char *token_name, char *content, int lineno);
%}

%option yylineno




newline (\n)
delim ([ \t])
ws ({delim}+)

SEMI (;)
COMMA (,)
ASSIGNOP (=)
RELOP (>|<|>=|<=|==|!=)
PLUS (\+)
MINUS (-)
STAR (\*)
DIV (\/)
AND (&&)
OR \|\|
DOT (\.)
NOT (!)
TYPE (int|float)
LP (\()
RP (\))
LB (\[)
RB (\])
LC (\{)
RC (\})
STRUCT (struct)
RETURN (return)
IF (if)
ELSE (else)
WHILE (while)

digit ([0-9])
digit1 ([1-9])
letter ([a-zA-Z])
letter_ ([_a-zA-Z])

ID ({letter_}({letter_}|{digit})*)

OCT (0[0-7][0-7]*)
HEX ((0x|0X)[0-9a-fA-F][0-9a-fA-F]*)
DEC (({digit1}{digit}*)|(0))
INT ({DEC}|{OCT}|{HEX})

digits ({digit}+)
fraction (\.{digits})
exponent ([eE][+-]?{digits})
FLOAT ({digits}{fraction}?{exponent}?)



%%
{newline} {yycolumn = 1;}
{ws} {}
{SEMI} {MAKE_NODE_RETURN(SEMI);}
{COMMA} {MAKE_NODE_RETURN(COMMA);} 
{ASSIGNOP} {MAKE_NODE_RETURN(ASSIGNOP);} 
{RELOP} {MAKE_NODE_RETURN(RELOP);} 
{PLUS} {MAKE_NODE_RETURN(PLUS);} 
{MINUS} {MAKE_NODE_RETURN(MINUS);} 
{STAR} {MAKE_NODE_RETURN(STAR);} 
{DIV} {MAKE_NODE_RETURN(DIV);} 
{AND} {MAKE_NODE_RETURN(AND);} 
{OR} {MAKE_NODE_RETURN(OR);} 
{DOT} {MAKE_NODE_RETURN(DOT);} 
{NOT} {MAKE_NODE_RETURN(NOT);} 
{TYPE} {MAKE_NODE_RETURN(TYPE);} 
{LP} {MAKE_NODE_RETURN(LP);} 
{RP} {MAKE_NODE_RETURN(RP);} 
{LB} {MAKE_NODE_RETURN(LB);} 
{RB} {MAKE_NODE_RETURN(RB);} 
{LC} {MAKE_NODE_RETURN(LC);} 
{RC} {MAKE_NODE_RETURN(RC);} 
{STRUCT} {MAKE_NODE_RETURN(STRUCT);} 
{RETURN} {MAKE_NODE_RETURN(RETURN);} 
{IF} {MAKE_NODE_RETURN(IF);} 
{ELSE} {MAKE_NODE_RETURN(ELSE);} 
{WHILE} {MAKE_NODE_RETURN(WHILE);} 
{ID} {MAKE_NODE_RETURN(ID);} 
{INT} {MAKE_NODE_RETURN(INT);} 
{FLOAT} {MAKE_NODE_RETURN(FLOAT);} 
. {printf("Error type A at Line %d: Mysterious character \"%s\".\n", yylineno, yytext);}

%%
struct _node *make_node(char *token_name, char *text, int lineno)
{
	struct _node *temp = malloc(sizeof(struct _node));
	temp->lineno = lineno;
	sprintf(temp->text, "%s", text);
	sprintf(temp->token_name, "%s", token_name);
	if(strcmp(token_name, "INT") == 0)temp->int_val = atoi(text);
	else if(strcmp(token_name, "FLOAT") == 0)temp->float_val = atof(text);
	temp->left = NULL;
	temp->right = NULL;
	return temp;
}
