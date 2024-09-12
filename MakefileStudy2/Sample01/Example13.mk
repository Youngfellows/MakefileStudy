hello.out all : func.o main.o
	gcc -o hello.out func.o main.o
	@./hello.out

func.o : func.c
	gcc -o func.o -c func.c

main.o : main.c
	gcc -o main.o -c main.c

run :
	@./hello.out

# 通过 .PHONY 声明 clean 为伪目标
.PHONY : clean

clean :
	rm *.o hello.out


