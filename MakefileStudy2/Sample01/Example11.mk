hello.out all : func.o main.o
	gcc -o hello.out func.o main.o
	@./hello.out

func.o : func.c
	gcc -o func.o -c func.c

main.o : main.c
	gcc -o main.o -c main.c

clean :
	rm hello.out main.o func.o

run :
	@./hello.out
