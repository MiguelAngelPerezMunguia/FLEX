%{
#include <stdio.h>
int mayu=0,min=0;
%}

%%
[A-Z] {printf("Mayuscula\t"); mayu++;}
[a-z] {printf("Minuscula\t"); min++;}
%%
int yywrap()
{
    return 1;
}

int main()
{
    printf("Escribe una cadena de texto: ");
    yylex();
    printf("Mayuscula=%d, minuscula=%d", mayu, min);
}