%{
    #include<stdio.h>
%}

%option noyywrap
L [A-Za-z]
D [0-9]
DO [0-7]
HX [A-Fa-f0-9]
%%
int|if|else|return|float|char|const|static|while|do|void {printf("Keyword found \n");return 1;}
(0X){HX}+ {printf("Hexadecimal number found \n"); return 1;}
{L}({L}|{D})* {printf("Identifier found \n");return 1;}
0{DO}+ {printf("Octal number found \n");return 1;}
{D}+ {printf("Integer number found \n");return 1;}
{D}+\.{D}+ {printf("Decimal number found \n");return 1;}
"*"|"/"|"%" {printf("Multiplicative Operator found \n"); return 1;}
"+"|"-" {printf("Arithmetic Operator found \n"); return 1;}
"<<"|">>" {printf("Bitwise Shift Operator found \n"); return 1;}
"<"|"<="|">"|">="|"=="|"!=" {printf("Relational Operator found \n");return 1;}
"="|"+="|"-=" {printf("Assignment Operator found \n");return 1;}
"("|"["|"{" {printf("Left parenthesis found \n");return 1;}
")"|"]"|"}" {printf("Right parenthesis found \n");return 1;}
":"|"," {printf("Delimiter found \n");return 1;}
%%

int main()
{ 
    while(yylex());
}


