/* assignment01_q04.l just like unix wc */

%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}    { printf("Valid email address: %s\n", yytext); }
.*                                             { printf("Invalid input: %s\n", yytext); }
\n                                        
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
