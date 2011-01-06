CC = gcc

CFLAGS = -I/usr/include -I/usr/local/include -O2 -Wall -DX11R4UP -DFONT_PATH="/usr/share/xlv/"
LFLAGS = -L/usr/lib -L/usr/local/lib

OBJS = main.o font.o list.o parse.o
LIBS = -lX11

all: xlv

xlv: $(OBJS)
	$(CC) $(LFLAGS) -o xlv $(OBJS) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o xlv

install:
	mkdir -p /usr/share/xlv
	cp fonts/* /usr/share/xlv/

deinstall:
	rm /usr/share/xlv/*
	rmdir /usr/share/xlv
