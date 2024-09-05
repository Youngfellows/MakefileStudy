all:
	cd ..  
	# The cd above does not affect this line, because each command is effectively run in a new shell
	# 上面的cd不会影响到下一行命令的执行结果，因为每一个命令都是在一个新的shell中执行的
	echo `pwd`			# 会打印当前Makefile所在的目录

	cd ..; echo `pwd`	# 两个命令在同一行，是在同一个shell中执行；会打印当前Makefile所在目录的上一层目录

	cd ..; \			# 虽换行了，但有转义字符，两个命令还是在同一行，是在同一个shell中执行的；打印当前Makefile所在目录的上一层目录
	echo `pwd`


# Each command is run in a new shell 