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
[\x25|\x2B|\x2A|\x2D|\x2F]	{return(OP);}
" "		{;}
"\n"		{lineCount++; return(NEWLINE);}
"(" 		{return(OPENP);}
")"		{return(CLOSEP);}
"="		{return(EQUAL);}
";"		{return(SEMICOLON);}
.		{;}
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


