/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    SELECT = 258,
    FROM = 259,
    SELECT_DISTINCT = 260,
    WHERE = 261,
    AND = 262,
    OR = 263,
    NOT = 264,
    ORDER_BY = 265,
    INSERT_INTO = 266,
    VALUES = 267,
    IS = 268,
    NULL_TKN = 269,
    UPDATE = 270,
    SET = 271,
    DELETE = 272,
    IN = 273,
    BETWEEN = 274,
    AS = 275,
    CREATE_DATABASE = 276,
    DROP_DATABASE = 277,
    CREATE_TABLE = 278,
    DROP_TABLE = 279,
    ALTER_TABLE = 280,
    SELECT_ALL = 281,
    WORD = 282,
    TABLE = 283,
    COLUMN = 284,
    ASC = 285,
    DESC = 286,
    NUMBER = 287,
    NEW_LINE = 288,
    M_MARE = 289,
    M_MIC = 290,
    EQUAL = 291
  };
#endif
/* Tokens.  */
#define SELECT 258
#define FROM 259
#define SELECT_DISTINCT 260
#define WHERE 261
#define AND 262
#define OR 263
#define NOT 264
#define ORDER_BY 265
#define INSERT_INTO 266
#define VALUES 267
#define IS 268
#define NULL_TKN 269
#define UPDATE 270
#define SET 271
#define DELETE 272
#define IN 273
#define BETWEEN 274
#define AS 275
#define CREATE_DATABASE 276
#define DROP_DATABASE 277
#define CREATE_TABLE 278
#define DROP_TABLE 279
#define ALTER_TABLE 280
#define SELECT_ALL 281
#define WORD 282
#define TABLE 283
#define COLUMN 284
#define ASC 285
#define DESC 286
#define NUMBER 287
#define NEW_LINE 288
#define M_MARE 289
#define M_MIC 290
#define EQUAL 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 8 "a.y"
 int ivalue;
         char* svalue;
     

#line 134 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
