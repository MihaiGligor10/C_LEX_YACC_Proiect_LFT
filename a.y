%{
#include <stdio.h>
#include <string.h>
int yylex();
void yyerror(const char *s);  
%}

%union { int ivalue;
         char* svalue;
     }
%start sql;

%token SELECT;
%token FROM;
%token SELECT_DISTINCT
%token WHERE;
%token AND;
%token OR;
%token NOT;
%token ORDER_BY;
%token INSERT_INTO;
%token VALUES;
%token IS;
%token NULL_TKN;
%token UPDATE;
%token SET;
%token DELETE;			;
%token IN;
%token BETWEEN;
%token AS;
%token CREATE_DATABASE;
%token DROP_DATABASE;
%token CREATE_TABLE;
%token DROP_TABLE;
%token ALTER_TABLE;
%token SELECT_ALL;
%token <svalue> WORD
%token <svalue> TABLE;
%token <svalue> COLUMN;
%token ASC;
%token DESC;
%token <svalue> NUMBER
%token NEW_LINE
%token M_MARE;
%token M_MIC;
%token EQUAL;
%type <svalue> select_statement select where_statement to_be_selected columns conditie create_db_statement ordine order_by_statement op prelungire de_comparat;

%%

sql : 	 statement NEW_LINE sql
	|statement
	|
	;


statement : 	select_statement
		|create_db_statement
		|drop_db_statement
		|drop_table_statement
		;

create_db_statement : 	CREATE_DATABASE WORD {printf("Creeaza baza de date numita %s\n", $2);};
			
drop_db_statement : 	DROP_DATABASE WORD {printf("Sterge baza de date numita %s\n", $2);};
			
drop_table_statement :  DROP_TABLE TABLE {printf("Sterge tabelul numit %s\n", $2);};
	      
select_statement : select to_be_selected FROM TABLE where_statement order_by_statement {printf("%s %s din tabelul numit %s %s %s\n" ,$1,$2,$4,$5,$6);};
  			
  			
select	: SELECT          	{$$="Selecteaza ";} 
	| SELECT_DISTINCT	{$$="Selecteaza in mod distinct ";} ;
	
  	
where_statement : WHERE conditie {char * s2 = malloc(sizeof(char)*(strlen($2)+6)); 
						strcpy(s2," unde ");
						strcat(s2,$2);
						$$=s2;} 
		|{$$="";} ;
		
   
to_be_selected : columns   {$$=$1;} 
		| SELECT_ALL {$$=" toate coloanele ";} ;
				
		
order_by_statement : 	ORDER_BY columns ordine {char * s1 = malloc(sizeof(char)*(strlen($2)+strlen($3)+32)); 
								strcpy(s1,"ordonand dupa coloanele/coloana ");
								strcat(s1,$2);
								strcat(s1,$3);
								$$=s1;} 
			|{$$="";};
			 	
		
conditie : COLUMN op de_comparat  {char * s = malloc(sizeof(char)*(strlen($1)+strlen($2)+strlen($3)+10)); 
						strcpy(s,$1);
						strcat(s,$2);
						strcat(s,$3);
						$$=s;} 
	 | COLUMN op de_comparat prelungire conditie {char * s = malloc(sizeof(char)*(strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+10)); 
	 							strcpy(s,$1);
	 							strcat(s,$2);
	 							strcat(s,$3);
	 							strcat(s,$4);
	 							strcat(s,$5);
	 							$$=s;} ; 

	
de_comparat : 	columns {$$=$1;}
		|NUMBER {$$=$1;}
		|WORD   {$$=$1;};
	

columns : COLUMN ',' columns   {char * s = malloc(sizeof(char)*(strlen($1)+strlen($3)+11)); 
				strcpy(s,"coloanele ");
				strcat(s,$1);
				strcat(s,",");
				strcat(s,$3);
				$$=s;} 
	| COLUMN {$$=$1;} 
	| {$$="";};
	
	
prelungire :	 AND {$$=" si ";}
		|OR  {$$=" sau ";}; 
		
		
op :	 M_MIC  {$$=" mai mic decat ";}
	|M_MARE {$$=" mai mare decat ";}	
	|EQUAL  {$$=" egal cu ";};
	
	
ordine : ASC  {$$=" de la cel mai mic la cel mai mare";}
	|DESC {$$=" de la cel mai mare la cel mai mic";}
	| {$$="";};

%%
