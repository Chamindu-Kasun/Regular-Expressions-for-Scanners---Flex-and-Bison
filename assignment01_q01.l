/* assignment01_q01.l just like unix wc */

%{
#include <stdio.h>
%}

%%
[A-Z*][a-zA-Z0-9_]*   { printf("Valid identifier: %s\n", yytext); }
.*                    { printf("Invalid identifier: %s\n", yytext); }
\n                    
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
