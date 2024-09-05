# Use vpath to specify where some set of prerequisites exist. 
# The format is vpath <pattern> <directories, space/colon separated>
# <pattern> can have a %, which matches any zero or more characters.

# 用关键字 vpath 指定一系列存在的先决条件（依赖）
# 格式：vpath <pattern> <directories, space/colon separated>

vpath %.h ../headers ../other-directory		# 匹配出指定目录中所有的.h文件，指定这些.h文件是已存在的依赖

some_binary: ../headers blah.h				
	touch some_binary

../headers:
	mkdir ../headers

blah.h:
	touch ../headers/blah.h

clean:
	rm -rf ../headers some_binary