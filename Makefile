exec = k
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
wsources = $(wildcard wsrc/*.c)
obj = $(wsources:.c=.o)
flags = -g -Wall -lm -ldl -fPIC -rdynamic 

$(exec):$(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c include/%.h 
	gcc -c $(flags) $< -o $@

win:
	gcc.exe -Wall -O2  -c $(wsources) -o $(obj)
	gcc.exe  -o x.exe $(obj)  -s 

clean:
	-rm k 
	-rm src/*.o
	-rm *.a
	-rm *.o
	-rm wsrc/*.o
	-rm x.exe

lint:
	clang-tidy src/*.c src/include/*.h