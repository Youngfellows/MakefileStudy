CC = gcc	# flag for implicit rules
CFLAGS = -g	# flag for implicit rules

blah: blah.o

blah.c:
	echo "int main() { return 0; }" > blah.c
clean:
	rm -rf blah*


# 自动生成的规则
# $(CC) -c $(CPPFLAGS) $(CFLAGS)					# 	*.c  	---> *.o	当缺*.o时，自动从*.c生成*.o
# $(CXX) -c $(CPPFLAGS) $(CXXFLAGS)					# *.cpp 	---> *.o	当缺*.o时，自动从*.cpp生成*.o	
# $(CC) $(LDFLAGS) n.o $(LOADLIBES) $(LDLIBS)		# n.o 	---> n			当只有目标和依赖时，自动生成构建规则

# The important variables used by implicit rules are:
# 	CC: Program for compiling C programs; default cc
# 	CXX: Program for compiling C++ programs; default g++
# 	CFLAGS: Extra flags to give to the C compiler
# 	CXXFLAGS: Extra flags to give to the C++ compiler
# 	CPPFLAGS: Extra flags to give to the C preprocessor
# 	LDFLAGS: Extra flags to give to compilers when they are supposed to invoke the linker