%{
    #include<stdio.h>
    int hex=0, id=0, oct=0, intg=0, dec=0, mult=0, arth=0, bits=0, rel=0, assnmt=0, lp=0, rp=0, del=0;
%}

%option noyywrap
L [A-Za-z]
D [0-9]
DO [0-7]
HX [A-Fa-f0-9]
%%
int|if|else|return|float|char|const|static|while|do|void {printf("Keyword found \n");return 1;}
(0X){HX}+ {printf("Hexadecimal number found \n"); hex++; return 1;}
{L}({L}|{D})* {printf("Identifier found \n"); id++; return 1;}
0{DO}+ {printf("Octal number found \n"); oct++; return 1;}
{D}+ {printf("Integer number found \n"); intg++; return 1;}
{D}+\.{D}+ {printf("Decimal number found \n"); dec++; return 1;}
"*"|"/"|"%" {printf("Multiplicative Operator found \n"); mult++; return 1;}
"+"|"-" {printf("Arithmetic Operator found \n"); arth++; return 1;}
"<<"|">>" {printf("Bitwise Shift Operator found \n"); bits++; return 1;}
"<"|"<="|">"|">="|"=="|"!=" {printf("Relational Operator found \n"); rel++; return 1;}
"="|"+="|"-=" {printf("Assignment Operator found \n"); assnmt++; return 1;}
"("|"["|"{" {printf("Left parenthesis found \n"); lp++; return 1;}
")"|"]"|"}" {printf("Right parenthesis found \n");rp++; return 1;}
":"|"," {printf("Delimiter found \n");del++; return 1;}
%%

int main()
{ 
    while(yylex());
    printf("Number of Hexadecimal tokens found: %d \n", hex);
    printf("Number of Identifiers found: %d \n", id);
    printf("Number of Octal tokens found: %d \n", oct);
    printf("Number of Integer tokens found: %d \n", intg);
    printf("Number of Decimal tokens found: %d \n", dec);
    printf("Number of Multiplicative tokens found: %d \n", mult);
    printf("Number of Arithmetic tokens found: %d \n", arth);
    printf("Number of Bitwise Shift tokens found: %d \n", bits);
    printf("Number of Relational tokens found: %d \n", rel);
    printf("Number of Assignment tokens found: %d \n", assnmt);
    printf("Number of Left Parenthesis found: %d \n", lp);
    printf("Number of Right Parenthesis found: %d \n", rp);
    printf("Number of Delimiter tokens found: %d \n", del);
}


