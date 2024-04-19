%{
    #include<stdio.h>
%}

%option noyywrap
L [A-Za-z]
D [0-9]
%%
int|if|else|return {printf("Keyword found \n");return 1;}
{L}({L}|{D})* {printf("Identifier found \n");return 1;}
{D}+ {printf("Integer number found \n");}
{D}+\.{D}+ {printf("Decimal number found \n");}
"<"|"<="|">"|">="|"=="|"!=" {printf("Relational Operator found \n");}
"="|"+="|"-=" {printf("Assignment Operator found \n");}
"("|"["|"{" {printf("Left parenthesis found \n");}
")"|"]"|"}" {printf("Right parenthesis found \n");}
":"|"," {printf("Delimiter found \n");}
%%

int main()
{ 
    while(yylex());
}
