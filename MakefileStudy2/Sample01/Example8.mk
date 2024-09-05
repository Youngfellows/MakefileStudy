# 引用变量的语法是：`${}` 或 `$()`

animal = Cat

all:
	echo $(animal)
	echo ${animal}
