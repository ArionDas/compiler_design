%{
#include <stdio.h>
#include "y.tab.h"
%}
ws [ \t\n]+
letter [A-Za-z]
digit  [0-9]
id {letter}({letter}|{digit})*
real {digit}+(\.{digit}+)?(E[+\-]?{digit}+)?
num {digit}+
%%

{ws}        { /* No action */ }
"char"      { yylval.charval = sizeof(char); return CHAR; }
"int"       { yylval.intval = sizeof(int); return INT; }
"float"     { yylval.floatval = sizeof(float); return FLOAT; }
{id}        { return ID; }
{num}       { return NUM; }
";"         { return ';'; }
","         { return ','; }

%%

int yywrap(void) {
    return 1;
}
