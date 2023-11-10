%{
#include<stdio.h>
%}
%%
int|char|float { printf("\n %s is datatype",yytext);}
[a-zA-Z_]* {printf("\n %s is a set of characters ",yytext);}
[0-9_]* {printf("\n %s is a number ",yytext);}
. {}
%%
 int yywrap()
 {
 }
 int main()
 {
 printf("enter input\n");
 yylex();
 return 0;
 }
 
