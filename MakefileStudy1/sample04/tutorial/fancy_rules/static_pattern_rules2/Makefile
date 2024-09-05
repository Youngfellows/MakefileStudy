objects = foo.o bar.o all.o
all: $(objects)

# These files compile via implicit rules
# Syntax - targets ...: target-pattern: prereq-patterns ...
# In the case of the first target, foo.o, the target-pattern matches foo.o and sets the "stem" to be "foo".
# It then replaces the '%' in prereq-patterns with that stem
$(objects): %.o: %.c		# 把$(objects)中的*.c文件，构建成*.o文件

all.c:
	echo "int main() { return 0; }" > all.c
%.c:
	touch $@
clean:
	rm -rf *.o %.c all