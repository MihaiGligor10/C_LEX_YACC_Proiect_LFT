%{
#include "y.tab.h"
#include <stdio.h>
#include <string.h>
%}
    /*%option yylineno*/
%%
SELECT       		return SELECT;
FROM        		return FROM;
"SELECT DISTINCT" 	return SELECT_DISTINCT;
WHERE         		return WHERE;
"ORDER BY"    		return ORDER_BY;
AND			return AND;
OR			return OR;
NOT      		return NOT;
"INSERT INTO"          return INSERT_INTO;
VALUES           	return VALUES;
IS			return IS;
NULL			return NULL_TKN;
UPDATE           	return UPDATE;
SET   			return SET;
DELETE     		return DELETE;			
IN			return IN;
BETWEEN		return BETWEEN;
AS			return AS;
"CREATE DATABASE"	return CREATE_DATABASE;
"DROP DATABASE"	return DROP_DATABASE;
"CREATE TABLE"		return CREATE_TABLE;
"DROP TABLE"		return DROP_TABLE;
"ALTER TABLE"		return ALTER_TABLE;
Id			{yylval.svalue = strdup(yytext); return COLUMN;}
Name			{yylval.svalue = strdup(yytext); return COLUMN;}
Age			{yylval.svalue = strdup(yytext); return COLUMN;}
TId			{yylval.svalue = strdup(yytext); return COLUMN;}
SId			{yylval.svalue = strdup(yytext); return COLUMN;}
CId			{yylval.svalue = strdup(yytext); return COLUMN;}
Description		{yylval.svalue = strdup(yytext); return COLUMN;}
Student		{yylval.svalue = strdup(yytext); return TABLE;}
Teacher		{yylval.svalue = strdup(yytext); return TABLE;}
Courses		{yylval.svalue = strdup(yytext); return TABLE;}
StudentCourse		{yylval.svalue = strdup(yytext); return TABLE;}
[*]			return SELECT_ALL;
ASC			return ASC;
DESC			return DESC;
[>]			return M_MARE;
[<]			return M_MIC;
[=]			return EQUAL;
[- ][0-9]+		{yylval.svalue = strdup(yytext); return NUMBER;}
[a-zA-Z][_a-zA-Z0-9]*	{yylval.svalue = strdup(yytext); return WORD;}
\n			return NEW_LINE;
[,]			return yytext[0];
.			;
%%

