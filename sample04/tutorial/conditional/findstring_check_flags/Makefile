bar = 
foo = $(bar)

all:									# make -i， 传参数i，
ifneq (,$(findstring i, $(MAKEFLAGS)))	# findstring是一个查找函数，在$(MAKEFLAGS)中查找 i字符
	echo "i was passed to MAKEFLAGS: $(MAKEFLAGS)"	# make -i 时，$(MAKEFLAGS) 等于 i
endif

ifneq (,$(findstring s, $(MAKEFLAGS)))				# make -s，传参数s
	echo "s was passed to MAKEFLAGS: $(MAKEFLAGS)"	# make -s 时，$(MAKEFLAGS) 等于s，因为make会处理s参数，关闭回显，不打印命令本身
endif