%{
#include<stdio.h>
int c1=0,c2=0;
%}
%%
[a-zA-Z] {c1++;}
[0-9] {c2++;}
\n {if(c1>0&&c2>0) printf("Alphanumeric \n");  else printf("Not Alphanumeric \n");c1=0;c2=0;}
%%
int yywrap()
{
}

int main()
{
printf("Enter the Sentence \n");
yylex();
return 0;
}  

