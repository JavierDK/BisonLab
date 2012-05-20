all: Grammar.tab.o lex.yy.o

lex.yy.o: lex.yy.c
		g++ -c lex.yy.c

Grammar.tab.o: Grammar.tab.c
		g++ -c Grammar.tab.c

lex.yy.c: Lexer.l
		flex Lexer.l

Grammar.tab.c: Grammar.y
		bison -d Grammar.y

clean:
		rm -f Grammar.tab.c Grammar.tab.o lex.yy.c lex.yy.o Grammar.tab.h
