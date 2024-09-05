one = one $(later_variable)		# : 命令使用该变量时，才去查看这个变量，而不是定义的时候
two := two $(later_variable)	# :=  到目前为止定义过的变量，定义时被展开

later_variable = later

all:
	@echo $(one)
	@echo $(two)
