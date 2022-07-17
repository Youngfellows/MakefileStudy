all: f1.o f2.o

f1.o f2.o:		# 多个目标共用同一条构建规则
	echo $@		# $@是一个自动变量，当目标是f1.o时，$@等于f1.o，当目标是f2.o时，$@等于f2.o

# equivalent to 
#f1.o:
#	echo $@
#f2.o:
#	echo $@