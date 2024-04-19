%%

a*b  {printf("Token 1 found \n");return 1;}
c+   {printf("Token 2 found \n");return 2;}

%%
int main()
{ 

	while(yylex());
}

