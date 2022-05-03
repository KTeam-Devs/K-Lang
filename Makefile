exec = K
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g -Wall -lm -ldl -fPIC -rdynamic

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

install:
	make
	cp ./K /usr/local/bin/K

clean:
	rm src/*.o
	rm K

lint:
	clang-tidy src/*.c src/include/*.h
