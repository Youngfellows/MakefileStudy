comma := ,
empty := 

# 成功引入一个空格
space := $(empty) $(empty)
foo := a b c
bar := $(subst $(space),$(comma),$(foo))	# 把 $(foo)中的空格替换为逗号，注意：参数之间不要有空格，否则空格也会作为参数的一部分，导致替换不正确
											# bar ：= $(subst $(space), $(comma), $(foo))		则结果为： ,a ,b ,c   参数间有空格，改变了$(comma)和$(foo)的值，在变量前都加了一个空格
all:
	echo $(bar)
