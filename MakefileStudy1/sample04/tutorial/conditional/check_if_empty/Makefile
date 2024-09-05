nullstring = 
foo = $(nullstring)

all:
ifeq ($(strip $(foo)),)			# 去掉变量值左右两边的空格，测试是否为空
	echo "foo is empty after being striped"
endif
ifeq ($(nullstring),)
	echo "nullstring doesn't even have spaces"
endif