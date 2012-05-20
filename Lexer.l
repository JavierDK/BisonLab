
%{
#include <iostream>
#include <stdio.h>
#include <string>
#include "Grammar.tab.h"
%}


%%
[ \t\n]  					{return (yylval.token = WHITESPACE);};
[a-zA-Z_][a-zA-Z0-9]*		{yylval.string = new std::string(yytext, yyleng); return IDENTIFIER;}
[0-9]+\.[0-9]*				{yylval.string = new std::string(yytext, yyleng); return DOUBLE;}
[0-9]+						{yylval.string = new std::string(yytext, yyleng); return INTEGER;}
"="							{return (yylval.token = EQUAL);}
"=="						{return (yylval.token = CEQ);}
"!="						{return (yylval.token = NEQ);}
"<"							{return (yylval.token = CLT);}
"<="						{return (yylval.token = CLE);}
">"							{return (yylval.token = CG);}
">="						{return (yylval.token = CGE);}
"+"							{return (yylval.token = PLUS);}
"*"							{return (yylval.token = MUL);}
"-"							{return (yylval.token = MINUS);}
"/"							{return (yylval.token = DIV);}
";"							{return (yylval.token = SEMICOL);}
","							{return (yylval.token = COMMA);}
.							{printf("Unknown token!\n"); yyterminate();}

%%
