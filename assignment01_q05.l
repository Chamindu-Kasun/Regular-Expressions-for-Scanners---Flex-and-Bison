/* assignment01_q05.l just like unix wc */

%{
#include <stdio.h>
%}

%%
0[xX][0-9a-fA-F]+   { printf("Valid hexadecimal number: %s\n", yytext); }
.*                  { printf("Invalid input: %s\n", yytext); }
\n 
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
