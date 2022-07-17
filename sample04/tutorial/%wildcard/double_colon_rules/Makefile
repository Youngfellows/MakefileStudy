all: blah

blah::
	echo "hello"

blah::
	echo "hello again"

# blah:							# 单冒号
# 	echo "hello"				# 规则被覆盖
# blah:
# 	echo "hello again"			# 规则被覆盖
# blah:
# 	echo "hello double again"	# 规则执行

# 双冒号规则: 允许对一个目标定义多个规则；如果是单冒号，则会打印警告，只会使用最后一个定义的规则，老的规则被覆盖