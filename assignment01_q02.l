/* assignment01_q02.l just like unix wc */

%{
 #include <stdio.h>
%}

%%
[+-][0-9]+\.[0-9]+    { printf("Valid signed floating point number: %s\n", yytext); }
[^ \t\n]+             { printf("Invalid input: %s\n", yytext); }
\n 
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
