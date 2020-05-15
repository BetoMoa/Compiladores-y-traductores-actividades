all: bis fle cop
bis:
	bison -d Simple.y
cop:
	gcc -c Simple.tab.c
	gcc -c lex.yy.c
	gcc -o Simple Simple.tab.o lex.yy.o -lm
fle:
	flex Simple.l
pbr:
	Simple test_simple
clean: 
	rm lex.yy.c
	rm Simple.tab.c
	rm Simple.tab.h
