%{
#include <stdio.h>
int mayu=0;
int min=0;
int digi=0;
int guion=0;
%}

%%
[A-Z] {printf("Mayuscula\t"); mayu++;}
[a-z] {printf("Minuscula\t"); min++;}
[0-9] {printf("Digito\t"); digi++;}
"_"   {printf("Guion_bajo\t"); guion++;}
%%
int yywrap()
{
    return 1;
}

int main()
{
    printf("Escribe una cadena de texto ");
    yylex();
    printf("Mayuscula=%d, Minuscula=%d, Digito=%d, Guion_bajo=%d", mayu, min, digi, guion);
}