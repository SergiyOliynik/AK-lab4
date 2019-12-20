all: proj

proj: my_program.o lib.o
	g++ my_program.o lib.o -o proj

my_program.o: my_program.cpp
	g++ -c my_program.cpp

lib.o: lib.cpp
	g++ -c lib.cpp

clean:
	rm -rf *.o proj
