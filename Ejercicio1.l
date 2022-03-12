%option noyywrap
%{
   #include<stdio.h>
%}

%%

%%
int main()
{
   printf("Hola mundo ");
   yylex();
   return 0;
}