%{
    #include<stdio.h>
    #include "y.tab.h"
    extern int yylval;
%}

digit [0-9]
letter [a-zA-Z]
binary [0-1]
hex [A-Z0-9]
octal [0-7]
single_line_commnt "//".*
multi_line_comment "/*".*"*/"

%%
{digit}+ {yylval = atoi(yytext); printf("Integer found: %d",yylval); return NUM;}

[\t] ;

[\n] return 0;

. return yytext[0];
%%
int yywrap()
{return 1;}