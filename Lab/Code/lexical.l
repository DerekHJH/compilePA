%{
	#include "syntax.tab.h"
	#include <stdlib.h>
	int yycolumn = 1;
	#define YY_USER_ACTION \
	yylloc.first_line = yylloc.last_line = yylineno; \
	yylloc.first_column = yycolumn; \
	yylloc.last_column = yycolumn + yyleng - 1; \
	yycolumn += yyleng;
	
	typedef struct
    {
    	union
    	{
    		int int_val;
    		float float_val;
    	};
    	int token_id;
    	char content[15];
		_node *left;
		_node *right;
    }_node;
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
{SEMI} {return SEMI;} 
{COMMA} {return COMMA;} 
{ASSIGNOP} {return ASSIGNOP;} 
{RELOP} {return RELOP;} 
{PLUS} {//printf("PLUS\n"); 
return PLUS;} 
{MINUS} {return MINUS;} 
{STAR} {return STAR;} 
{DIV} {return DIV;} 
{AND} {return AND;} 
{OR} {return OR;} 
{DOT} {return DOT;} 
{NOT} {return NOT;} 
{TYPE} {return TYPE;} 
{LP} {return LP;} 
{RP} {return RP;} 
{LB} {return LB;} 
{RB} {return RB;} 
{LC} {return LC;} 
{RC} {return RC;} 
{STRUCT} {return STRUCT;} 
{RETURN} {return RETURN;} 
{IF} {return IF;} 
{ELSE} {return ELSE;} 
{WHILE} {return WHILE;} 
{ID} {return ID;} 
{INT} {//printf("INT\n");
yylval.type_node = make_node(INT, yytext); 
return INT;} 
{FLOAT} {//printf("FLOAT\n"); 
yylval.type_node = make_node(FLOAT, yytext);
return FLOAT;} 
. {printf("Error type A at Line %d: Mysterious character \"%s\".\n", yylineno, yytext);}

%%
_node *make_node(int token_id, char *content)
{
	_node *temp = malloc(sizeof(_node));
	temp->token_id = token_id;
	sprintf(temp->content, "%s", content);
	if(token_id == INT)temp->int_val = atoi(content);
	else if(token_id == FLOAT)temp->float_val = atof(content);
	return temp;
}
