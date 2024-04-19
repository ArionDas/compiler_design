/*C declarations*/
%{ #include <stdio.h>
   int yylex(void);
   void yyerror(char *);
   extern int yylineno, yychar;
%}

/* YACC Declarations */

%token NUM PLUS MULT
%right  '*' 
     
/* Grammar follows */
%%
EL:EL E  {$$=$2; }
  |
  ;
E: E PLUS T  {$$ = $1 + $3; printf("Value of E+T: %d\n", $$);} 
   | T {$$=$1;}  
T: T MULT F {$$ = $1 * $3; printf("Value after T*E: %d\n", $$);}
         ;
T: F  {$$=$1; }
 ;
F: NUM {$$ = $1; printf("NUMBER: %d\n", $$);}
         ;

%%
void yyerror(char *s)
     {printf(" %s  Line number : %d near symbol %c \n", s, yylineno, (char)yychar); }

 
int main ()
{  // yydebug = 1;
   yyparse (); 
   //printf(" No of declaration statements : %d \n", declcnt);
   return 0;
}
