CFLAGS=-O3 -Wall -I /usr/local/include -I /usr/X11R6/include
LFLAGS=-L /usr/X11R6/lib -lX11


xlv: main.o font.o list.o parse.o
	$(CC) -o xlv main.o font.o list.o parse.o $(LFLAGS)

main.o: main.c
	$(CC) -c main.c $(CFLAGS)

font.o: font.c
	$(CC) -c font.c $(CFLAGS)

list.o: list.c
	$(CC) -c list.c $(CFLAGS)

parse.o: parse.c
	$(CC) -c parse.c $(CFLAGS)

clean:
	rm -f *.o *~ xlv

