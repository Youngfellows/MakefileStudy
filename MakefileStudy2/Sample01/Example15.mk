hello.out : func.o main.o
	gcc -o hello.out func.o main.o
	@./hello.out

func.o : func.c
	gcc -o func.o -c func.c

main.o : main.c
	gcc -o main.o -c main.c

run :
	@./hello.out


# 绕开.PHONY关键字定义伪目标
clean : FORCE
	rm *.o hello.out

FORCE :
