%{
int vow_count=0;
int const_count=0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
\n { printf("Number of vowels and consonants are: %d %d \n", vow_count, const_count);}
%%
 int yywrap()
 {
 }
 int main()
 {
 printf("enter the string of vowels and consonants:\n");
 yylex();
 

 return 0;
 }
 
