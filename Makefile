bison.tab.c bison.tab.h: bison.y
	bison -d bison.y

lex.yy.c: flex.l flex.tab.h
	flex felx.l

parser: lex.yy.c bison.tab.c bison.tab.h
	gcc bison.tab.c lex.yy.c -lfl -o parser
