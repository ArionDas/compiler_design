%{
#include <stdio.h>
#include "y.tab.h"
#include <stdlib.h>
extern int yylval;
%}

ws [ \t\n]+
letter [A-Za-z]
digit  [0-9]
id {letter}({letter}|{digit})*
real {digit}+(\.{digit}+)?(E[+\-]?{digit}+)?
num [+\- ]{digit}+

%%

{ws}        {;/* No action */}
"char"      {yylval = sizeof(char); return CHAR;}
"int"       {yylval = sizeof(int);  return INT;}
"float"     {yylval = sizeof(float); return FLOAT;}
{id}        {return ID;}
{digit}+    {return NUM;}
";"         {return ';';}
","         {return ',';}
%%

int yywrap(void)
{ return 1; }
