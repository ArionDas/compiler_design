%{
    #include<stdio.h>
    int hex=0, id=0, oct=0, intg=0, dec=0, mult=0, arth=0, bits=0, rel=0, assnmt=0, lp=0, rp=0, del=0;
    int assd=0, sfile=0, lbl=0, opc=0;
%}

%option noyywrap
op sub|mov|xor|lea|add|ret|cmp|imul|sal|shr|and|or|not
suffix b|w|l|q
id [A-Za-z]
D [0-9]
DO [0-7]
HX [A-Fa-f0-9]
Del :|,|;
%%

\.text {printf("Assembler Directive: %s\n", yytext); assd++; return 1;}
".file"(".")* {printf("C source file: %s\n", yytext); sfile++; return 1;}
int|if|else|return|float|char|const|static|while|do|void {printf("Keyword found\n");return 1;}
\.L{id}+{D}+ {printf("Label: %s\n", yytext); lbl++; return 1;}
{Del} {printf("Delimiter: %s\n", yytext); del++; return 1;}
{op}{suffix} {printf("opcode: %s\n", yytext); opc++; return 1;}
{id}({id}|{D})* {printf("Identifier: %s\n", yytext); id++; return 1;}


(0X){HX}+ {printf("Hexadecimal number found \n"); hex++; return 1;}
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
    printf("Number of Assembler Directives found: %d \n", assd);
    printf("Number of Source Files found: %d \n", sfile);
    printf("Number of Labels found: %d \n", lbl);
    printf("Number of opcodes found: %d \n", opc);

}


