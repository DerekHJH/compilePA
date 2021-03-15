%{
	#include <stdio.h>
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
{SEMI} {printf("We recognize [%s] as SEMI\n", yytext);}
{COMMA} {printf("We recognize [%s] as COMMA\n", yytext);}
{ASSIGNOP} {printf("We recognize [%s] as ASSIGNOP\n", yytext);}
{RELOP} {printf("We recognize [%s] as RELOP\n", yytext);}
{PLUS} {printf("We recognize [%s] as PLUS\n", yytext);}
{MINUS} {printf("We recognize [%s] as MINUS\n", yytext);}
{STAR} {printf("We recognize [%s] as STAR\n", yytext);}
{DIV} {printf("We recognize [%s] as DIV\n", yytext);}
{AND} {printf("We recognize [%s] as AND\n", yytext);}
{OR} {printf("We recognize [%s] as OR\n", yytext);}
{DOT} {printf("We recognize [%s] as DOT\n", yytext);}
{NOT} {printf("We recognize [%s] as NOT\n", yytext);}
{TYPE} {printf("We recognize [%s] as TYPE\n", yytext);}
{LP} {printf("We recognize [%s] as LP\n", yytext);}
{RP} {printf("We recognize [%s] as RP\n", yytext);}
{LB} {printf("We recognize [%s] as LB\n", yytext);}
{RB} {printf("We recognize [%s] as RB\n", yytext);}
{LC} {printf("We recognize [%s] as LC\n", yytext);}
{RC} {printf("We recognize [%s] as RC\n", yytext);}
{STRUCT} {printf("We recognize [%s] as STRUCT\n", yytext);}
{RETURN} {printf("We recognize [%s] as RETURN\n", yytext);}
{IF} {printf("We recognize [%s] as IF\n", yytext);}
{ELSE} {printf("We recognize [%s] as ELSE\n", yytext);}
{WHILE} {printf("We recognize [%s] as WHILE\n", yytext);}
{ID} {printf("We recognize [%s] as ID\n", yytext);}
{INT} {printf("We recognize [%s] as INT\n", yytext);}
{FLOAT} {printf("We recognize [%s] as FLOAT\n", yytext);}
. {printf("Error type A at line %d: Mysterious characters [%s], with length %d\n", yylineno, yytext, yyleng);}

%%

int main(int argc, char** argv)
{
	if(argc > 1)
	{
		if(!(yyin = fopen(argv[1], "r")))
		{
			perror(argv[1]);
			return 1;
		}
	}
	yylex();
	printf("finish\n");
	return 0;
}
