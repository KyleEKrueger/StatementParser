/*Lex Program*/
%{
#include<stdio.h>
#include<stdlib.h>
void errorMessage();
%}
/*Rule Section*/
%%
[0-9]		return("DIGIT");
[a-zA-Z]	return("CHAR");
[+|-|*|\x2F|%]	return("OP");
[\x20]		return("");
[(] 		return("OPENP");
[)]		return("CLOSEP");
[=]		return("EQUAL");
[;]		return("SEMICOLON");
.		errorMessage();
%%
void errorMessage(){
printf("ERROR: UNEXPECTED INPUT; UNABLE TO TOKENIZE: ",yytext);
}
int main(){
    yylex();
    return 0;
}	
