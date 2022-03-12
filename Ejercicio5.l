%option noyywrap
%{
#include<stdio.h>
int palabra=0, numero=0;
%}
Numero -?[0-9]+
Palabra [a-zA-Z]+
%%
"bye" {bye();return 0;}
"quit" {bye();return 0;}
"resume" {bye();return 0;}
{Numero} {printf("Se leyo numero: %d\n", atoi(yytext)); numero++;}
{Palabra} {printf("Se leyo la palabra: %s\n", yytext); palabra++;}
.printf("%s",yytext[0]);
%%
int main()
{
printf("Ejemplo2.1\n Este ejemplo, distingue entre un numero entero y palabras.\n Introduzca bye, quit o resume para terminar.\n");
yylex();
}
bye(){
printf("Se leyeron %d entradas, de las cuales se reconocieron \n%d Enteros\n\n%d Palabras.\n",(palabra+numero), numero, palabra);
system("pause");
}