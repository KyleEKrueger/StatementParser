/*BISON*/
%{
#include <stdio.h>
#include <stdlib.h>
#include "flex.h"
extern int yylex(void);
extern int yyparse(void);
void yyerror(const char *msg);
linecount = 1;
%}
%left '-''+'
%left '*''/'
%error-verbose
%token DIGIT ID OP OPENP CLOSEP EQUAL SEMICOLON NEWLINE
%%
file:		| line
		| file line

line:		| ass NEWLINE {printf("line %d:GOOD\n",linecount);linecount++;}
		| exp NEWLINE {printf("line %d:GOOD\n",linecount);linecount++;}

exp:		| ID OP ID 
		| exp OP ID 
		| OPENP exp CLOSEP 
		| OPENP ass CLOSEP
		| ID OP exp
ass:		| ID EQUAL exp SEMICOLON 


%%

int main (int argc, char ** argv){
	if (argc > 1) {
		yyin = fopen(argv[1],"r");
		if (yyin == NULL){
			printf("syntax: %s filename\n", argv[0]);
		}
	}
	yyparse();
	return 0;
}
void yyerror(const char *msg)	{
	printf("%s: %s\n",msg,yytext);
}
