# 宏（函数）定义
# 内置函数,Make解释器内部定义好的函数，任何脚本文件都可以直接调用  $(fname, param...)
# 用户定义的、带参数的函数,使用define关键字定义 $(call fname, param...)
# 用户定义的、不带参数的函数,该类函数称之为宏  $(fname)

# 用户函数
define showFirstName
	@echo $(1)
	@echo $(2)
	@echo $(MAKE_VERSION)
	@echo $(CURDIR)
	@echo $(MAKEFILE_LIST)
	@echo $(VARIABLE)
	@echo $(CC)
	@echo $(CXX)
	@echo $(CXXFLAGS)
	@echo $(APPFLAGS)
	@echo $(LDLIBS)
	@echo $(wildcard *.c)
endef

.PHONY: showFirstName
name:
	$(call showFirstName,zzyypp,zhangsan)

# ===========makefile脚本的语===========
# 目标（target）: 条件（prerequest）
# 	(Tab键）命令		

# ======================================
# .PHONY声明的目标总是执行其指定的命令，如果不声明的话，则仅当目标后面的条件变动后才执行
# 命令前面的@符号的作用是，不显示被执行的命令，默认会打印执行的命令


$(info start working)
.PHONY:test
test: f1.o f2.o main.o
	gcc -o main.bin f1.o f2.o main.o

f1.o: f1.c
	gcc -c f1.c -o f1.o
f2.o: f2.c
	gcc -c f2.c -o f2.o

main.o: main.c
	gcc -c main.c -o main.o



# ==============模板目标========================
#  脚本中的内置符号
#  $@ : 代表目标名称  
#  $< : 代表第一个先决条件的名称 
#  $^ : 所有的先决条件   
#  $+ : 所有有先决条件，和$^类似，只是包含了重复的先决条件
#  $* : 和$@类似，只是不包含targert后缀  
#  $? : 有更新的先决条件列表 
OBJ = f1.o f2.o main.o
.PHONY: test2
test2: $(OBJ)
	gcc $(OBJ) -o main.bin

%.o: %.c
	gcc -c $< -o $@

.PHONY: clean
clean:
	rm *.o *.bin
# ===================变量的定义与赋值===============================
# 立即赋值：在读取脚本时就给变量进行赋值
# 延迟赋值：读取时暂时不赋值，只有在执行脚本时用到了该变量，才对其进行赋值	
# := （立即）简单展开型，它在该Makefile被解析时就立即展开赋值
# =  （延迟）递归展开型，该赋值方式只有当该变量还没有赋值时才赋值
# ?= （延迟）条件赋值，只有当该变量还没有赋值时才赋值
# += （当该语句出现在target后面时，延迟；一般赋值时，立即展开）附加赋值

# ===================目标特定的变量赋值===============================
CFLAGS = -c
.PHONY: tar1
tar1 :
	gcc $(CFLAGS) main.c
# 对目标特定的tar2的CFLAGS变量赋值
tar2 : CFLAGS = 
tar2 : 
	gcc $(CFLAGS) main.c
#  命令行变量赋值 $make tar2 -e CFLAGS="-c -g"
#  不会被命令行修改 
tar3 : override CFLAGS = 
tar3 : 
	gcc $(CFLAGS) main.c

#  $make -n(--just-print) 仅仅答应出要执行的命令，却不真正执行，在分析Android编译系统中很有用			
#  $make -IName (libName.so指定编译所需的lib库)



