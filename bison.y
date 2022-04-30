/*BISON*/
%{
#include <stdio.h>
#include <stdlib.h>
#include "flex.h"
extern int yylex();
extern int yyparse();
void yyerror(const char *msg);
%}

%token DIGIT CHAR OP OPENP CLOSEP EQUAL SEMICOLON NEWLINE

%%
line:		ass NEWLINE | exp NEWLINE 
		;
ass:		id EQUAL exp SEMICOLON
		;
exp:		id OP id | exp OP id | OPENP exp CLOSEP
		;
id:		CHAR | id CHAR | id DIGIT
		;

%%

int mainb (int argc, char ** argv){
	yyparse();
	return 0;
}
void yyerror(const char *msg)	{
}
