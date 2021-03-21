%{
	#include "syntax.tab.h"
%}
delim ([ \t\n])
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

DEC ({digit1}{digit}*|0)
OCT (0[0-7][0-7]*)
HEX ((0x|0X)[0-9a-fA-F][0-9a-fA-F]*)
INT ({DEC}|{OCT}|{HEX})

digits ({digit}+)
fraction (\.{digits})
exponent ([eE][+-]?{digits})
FLOAT ({digits}{fraction}?{exponent}?)



%%
{ws} {}
{SEMI} {return SEMI;} 
{COMMA} {return COMMA;} 
{ASSIGNOP} {return ASSIGNOP;} 
{RELOP} {return RELOP;} 
{PLUS} {return PLUS;} 
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
{INT} {yylval = atoi(yytext); return INT;} 
{FLOAT} {return FLOAT;} 
. {}

%%

