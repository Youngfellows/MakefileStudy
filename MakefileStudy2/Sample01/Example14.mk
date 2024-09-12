hello.out : func.o main.o
	gcc -o hello.out func.o main.o
	@./hello.out

func.o : func.c
	gcc -o func.o -c func.c

main.o : main.c
	gcc -o main.o -c main.c

run :
	@./hello.out

# 通过 .PHONY 声明 clean 为伪目标
# 伪目标的妙用：规则调用(函数调用)
# 原来: 当一个目标的依赖包含伪目标时，伪目标所定义的命令总会被执行
.PHONY : clean rebuild all

rebuild : clean all

all : hello.out

clean :
	rm *.o hello.out


