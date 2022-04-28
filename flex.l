/*Lex Program*/
%{
#include<stdio.h>
#include<stdlib.h>
%}
/*Rule Section*/
%%
[0-9] return("DIGIT");
[a-zA-Z] return("CHAR");
[+|-|*|\x2F|%] return("OP");
[\x20] return("");
. return(yytext);
%%
int main(){
    yylex();
    return 0;
}	
