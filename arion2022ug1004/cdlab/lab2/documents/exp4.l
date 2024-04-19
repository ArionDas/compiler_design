%%

a*b  {printf("Token ab found \n");return 1;}
c+   {printf("Token c found \n");return 2;}

%%
int main()
{ 

	while(yylex());
}

