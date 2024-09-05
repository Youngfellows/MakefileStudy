obj_files = foo.result bar.o lose.o
src_files = foo.raw bar.c lose.c

.PHONY: all											# 最先来到这   1， 开始执行 4
all: $(obj_files)									# 目标依次是 foo.result bar.o lose.o，    来到这  2， 开始执行 3

$(filter %.o, $(obj_files)): %.o: %.c				# 来到这     3					 ， 或开始执行 2
	echo "target $@: prereq: $<"					# $@指目标，$<指第一个依赖
$(filter %.result, $(obj_files)): %.result: %.raw	# 在什么时机展开的， 或来到这  3   ， 开始执行 2
	echo "target $@: prereq: $<"

%.c %.raw:											# 来到这  4， 没其他依赖，开始执行 1
	touch $@
clean:
	rm -rf $(obj_files) $(src_files)

# 通配符的展开在什么时机