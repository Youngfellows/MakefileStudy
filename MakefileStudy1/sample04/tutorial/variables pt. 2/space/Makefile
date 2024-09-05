with_spaces = hello				# 赋值时，值前后的空格被去掉
after = $(with_spaces)there		# 空格被去掉了

nullstring = 					# 被赋一个空格，空格也被去掉，则为空
space = $(nullstring)

all:
	echo "$(after)"				# hellothere
	echo start"$(space)"end		# startend