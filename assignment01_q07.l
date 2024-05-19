/* assignment01_q05.l just like unix wc */

%{
#include <stdio.h>
%}

%%
\<[a-zA-Z0-9_]+[^>]*\>      { printf("Opening tag: %s\n", yytext); }
\<\/[a-zA-Z0-9_]+\>         { printf("Closing tag: %s\n", yytext); }
\<!--(.|\n)*?--\>           { printf("Comment: %s\n", yytext); }
.|\n                        
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
