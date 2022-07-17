# `if` checks if the first argument is nonempty. If so runs the second argument, otherwise runs the third.
# if函数检测第一个参数是否不为空，不为空则运行第二个参数，否则运行第三个参数；和 : ? 表达式很像

foo := $(if this-is-not-empty,then!,else!)
empty := 
bar := $(if $(empty),then!,else!)

all:
	echo $(foo)
	echo $(bar)