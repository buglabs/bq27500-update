# bq-update Makefile

CROSS_COMPILE	?= arm-linux-
CC		= $(CROSS_COMPILE)gcc

all: bqupdate

bqupdate: bqupdate.o
	$(CC) -o $@ $^

bqupdate.o: bqupdate.c
	$(CC) -c -o $@ $<

clean:
	rm -f bqupdate bqupdate.o

