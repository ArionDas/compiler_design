%%
[ \t\n]
(ab) {printf("\n Keyword\n");}
a*b  {printf("Token 1 found \n");}
c+   {printf("Token 2 found \n");}
.    { printf("err\n");}
%%
int yywrap(){
return 1;
}
int main()
{ yylex();
}

