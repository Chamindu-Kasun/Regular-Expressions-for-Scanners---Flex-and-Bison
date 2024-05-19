/* assignment01_q05.l just like unix wc */

%{
#include <stdio.h>
%}

%%
^(http|https):\/\/[a-zA-Z0-9.-]+(:[0-9]+)?(\/[a-zA-Z0-9._/-]*)?$    { printf("Valid URL: %s\n", yytext); }
.*                                                                  { printf("Invalid input: %s\n", yytext); }
\n
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
