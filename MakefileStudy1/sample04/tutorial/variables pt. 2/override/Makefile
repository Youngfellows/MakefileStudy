override option_one = did_override		# 覆盖来自命令行的变量		make option_one=hi

option_two = not_override				# 没有override，则不能覆盖来自命令行的变量		  make option_two=hello

all:
	@echo $(option_one)					# option_one 覆盖了来自命令行的值，则都会输出did_override
	@echo $(option_two)					# option_two 没有覆盖，如果命令行有传值，则打印命令行的值，没有则打印not_override

# You can override variables that come from the command line by using override. Here we ran make with make option_one=hi