objects = foo.o bar.o all.o
all: $(objects)			# 自动生成构建规则

foo.o: foo.c			# 自动生成构建规则
bar.o: bar.c			# 自动生成构建规则
all.o: all.c			# 自动生成构建规则

all.c:
	echo "int main() { return 0; }" > all.c
%.c:					# 匹配目标
	touch $@
clean:
	rm -rf *.o *.c all