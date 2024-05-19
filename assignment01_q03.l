/* assignment01_q03.l just like unix wc */

%{
#include <stdio.h>
%}

%%
\/\/[^\n]*                   { printf("Single line comment: %s\n", yytext); }
\/\*([^*]|\*+[^*/])*\*+\/    { printf("Multi-line comment: %s\n", yytext); }
\n 
.*                           { printf("Invalid input: %s\n", yytext); }
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
