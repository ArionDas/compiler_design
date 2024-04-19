%{
#include <stdio.h>
#include "y.tab.h"
#include <stdlib.h>
extern int yylval;
%}

ws [ \t\n]+
letter [A-Za-z]
digit  [0-9]

%%
{ws}   {    }
"-" {return '-';}
"+" {return '+';}
"*" {return '*';}
"/" {return '/';}
{digit}+ {yylval = atoi(yytext); return NUM;}
%%

int yywrap(void)
{ return 1; }
