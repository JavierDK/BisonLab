%{
#include <iostream>
#include <cmath>
#include <cstdio>
#include <map>

extern int yylex(void);
void yyerror (const char* s)
{
	printf("Error: %s\n", s);
}

%}

%union {
	std::string *string;
	int token;
}

%token <string> IDENTIFIER DOUBLE INTEGER
%token <token> EQUAL CEQ NEQ CLT CLE CG CGE PLUS MUL DIV MINUS SEMICOL COMMA
%token WHITESPACE

%left PLUS MINUS
%left MUL DIV

%start program

%%

program: ;

%%

