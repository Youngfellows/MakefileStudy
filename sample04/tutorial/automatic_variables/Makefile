hey: one two
	echo $@		# 目标
	echo $^		# 所有依赖
	echo $?		# 所有比目标新的依赖
	touch hey
one:
	touch one
two:
	touch two
clean:
	rm -rf hey one two