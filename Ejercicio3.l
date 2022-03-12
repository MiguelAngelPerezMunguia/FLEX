%{
#include <stdio.h>
int mayu=0;
int min=0;
int digi=0;
%}

%%
[A-Z] {printf("Mayuscula\t"); mayu++;}
[a-z] {printf("Minuscula\t"); min++;}
[0-9] {printf("Digito\t"); digi++;}
%%
int yywrap()
{
    return 1;
}

int main()
{
    printf("Escribe una cadena de texto ");
    yylex();
    printf("Mayuscula=%d, Minuscula=%d, Digito=%d", mayu, min, digi);
}