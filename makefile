CC = gcc
CSTD = iso9899:1990
CFLAGS = -Wall -Wextra -pedantic -ggdb

run: build/helloworld
	./build/helloworld

build/helloworld: build/helloworld.o
	$(CC) $(CFLAGS) -std=$(CSTD) build/helloworld.o -o build/helloworld

build/helloworld.o: src/hello-world.c
	$(CC) $(CFLAGS) -std=$(CSTD) -c src/hello-world.c -o build/helloworld.o

.PHONY: run clean

clean:
	rm build/helloworld build/*.o