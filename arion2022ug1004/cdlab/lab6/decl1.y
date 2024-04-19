/*C declarations*/
%{ #include <stdio.h>
   int yylex(void);
   void yyerror(char *);
   extern int yylineno, yychar;
   int declcnt = 0, int_dt=0, char_dt=0, float_dt = 0;
%}

/* YACC Declarations */

%token CHAR INT FLOAT ID NUM 
%right  '*' 
     
/* Grammar follows */
%%

declist: decl  declist  {printf("Rule 1 : declist -> decl declist used\n");} 
	 |              {printf("Rule 2 : declist -> Null used \n");}
         ;                 
decl:    type list ';'  {printf("Rule 3 : decl -> type list; used\n"); ++declcnt;}
         ;
type:    INT            {printf("Rule 4 : type -> INT used\n");int_dt++;}
         | FLOAT        {printf("Rule 5 : type -> FLOAT used\n");float_dt++;}
         | CHAR         {printf("Rule 6 : type -> CHAR used\n");char_dt++; }
         ;
list :   list ',' ID   {printf("Rule 7 : list -> list , ID Q used\n");}
         | ID          {printf("Rule 8 : list -> ID Q used\n");}
         ;
         ;

%%
void yyerror(char *s)
     {printf(" %s  Line number : %d near symbol %c \n", s, yylineno, (char)yychar); }

 
int main ()
{  // yydebug = 1;
   yyparse (); 
   printf(" No of declaration statements : %d \n", declcnt);
   //while(yylex());
    printf("Number of character datatypes found: %d \n", char_dt);
    printf("Number of integer datatypes found: %d \n", int_dt);
    printf("Number of floating point datatypes found: %d \n", float_dt);
   return 0;
}
