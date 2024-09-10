# makefile 中可以命令前加上@符号，作用为命令无回显示

all : test
	@echo "make all"

test :
	@echo "make test"
