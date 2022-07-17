thing_wrong := *.o				# not expand
thing_right := $(wildcard *.o)	

all: one two three four

# one: $(thing_wrong)
one:
	touch one

# two: *.o
two:
	touch two

three: $(thing_right)
	echo $^				# $^ 指three目标的所有依赖，即$(thing_right)

four: $(wildcard *.o)
	echo $^				# $^ 指four目标的所有依赖，即$(wildcard *.o)，当前目录下的所有.o文件

