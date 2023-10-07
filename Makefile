CC = gcc
CFLAGS = -g -O0 -Wall
headers = simple_dns.h
objects = simple_dns.o main.o

.c.o:
	$(CC) $(CFLAGS) -c $<

all: simple-dns

simple-dns: $(objects)
	$(CC) $(CFLAGS) -o simple-dns $(objects)

$(objects): $(headers)

clean:
	rm -f $(objects)
