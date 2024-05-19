/* assignment01_q05.l just like unix wc */

%{
#include <stdio.h>
%}

%%
(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-[0-9]{4}   { printf("Valid date: %s\n", yytext); }
.*                                                  { printf("Invalid input: %s\n", yytext); }
\n 
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
