one = export blah="I was set"; echo $$blah

define two
export blah=set
echo $$blah
endef

all:
	$(one)		# one的值组成的命令在同一行，运行在同一个shell中，所以打印结果为 I was set
	$(two)		# 因为每个命令运行在不同的shell中，所以打印结果为空; 
				# $(two) "This does not print 'I was set' because each command runs in a separate shell"


# 使用define 定义一系列命令，如果不在一行，注意，这些命令不在同一shell中运行
# "define" is actually just a list of commands. 
# It has nothing to do with being a function. 
# Note here that it's a bit different than having a semi-colon between commands, because each is run in a separate shell, as expected.