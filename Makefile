default:
	clear
	flex -l flex.l
	bison -dv bison.y 
	gcc -o parser bison.tab.c lex.yy.c -lfl