%{
#include<stdio.h>
%}
%%
a|e|i|o|u { printf("\n %s is vowel",yytext);}
[a-zA-Z] {printf("\n %s is consotant ",yytext);}
. {ECHO;}
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
 
