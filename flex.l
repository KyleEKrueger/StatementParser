/*LEX PROGRAM*/
%{	
#include"bison.tab.h"
#include<stdio.h>
#include<stdlib.h>
int lineCount = 1;
%}

%option noyywrap
/*Rule Section*/
%%
[0-9]+		{return(DIGIT);}
[a-zA-Z][a-zA-Z0-9]*	{return(ID);}
[+-/*%]		{return(OP);}
" "		{;}
"\n"		{lineCount++; return(NEWLINE);}
"(" 		{return(OPENP);}
")"		{return(CLOSEP);}
"="		{return(EQUAL);}
";"		{return(SEMICOLON);}
.		{printf("ERROR: Unrecognized Symbol at line %d : %s\n",lineCount,yytext);}
%%

int flex (int argc, char *argv[]){
    
	FILE *file = fopen(argv[1], "r");
	if(!file){
		printf("file is not valid");
		return -1;
	}

	yyin = file;

	while(yylex());
	fclose(file);

	return 0;

	}	


