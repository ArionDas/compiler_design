%{
    #include<stdio.h>
    int flag=0;
    int yylex();
    void yyerror();
%}

%token NUM

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
ArithmeticExpression: E{
                        printf("Provided expression is valid\n\n");
                        printf("\nResult=%d\n\n",$$);
                        return 0;
                        }
E:E'+'E {$$=$1+$3;}
    |E'-'E {$$=$1-$3;}
    |E'*'E {$$=$1*$3;}
    |E'/'E {$$=$1/$3;}
    |E'%'E {$$=$1%$3;}
    |'('E')' {$$=$1;}
    |NUM {$$=$1;}
    ;
%%

void main()
{
    printf("\nEnter any arithmetic expression\n\n");
    while(flag==0)
    {
        yyparse();
    }
}

void yyerror()
{
    printf("\nEntered expression is invalid\n\n");
    flag=1;
}
