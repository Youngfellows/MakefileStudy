# ifdef does not expand variable references; it just sees if something is defined at all

bar = 
foo = $(bar)

# bar 没被赋值，则没定义
# foo 被赋值，则定义了

all:
ifdef foo						# 是否定义，有被赋值，则定义；如果没给变量赋值，该变量也是没定义的
	echo "foo is defined"		# foo is defined
else
	echo "foo is not defined"
endif

ifdef bar
	echo "bar is defined"
else
	echo "bar is not defined"	# bar is not defined
endif
