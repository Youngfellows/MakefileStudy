# $(patsubst pattern,replacement,text)		
# "Finds whitespace-separated words in text that match pattern and replaces them with replacement. 
# 文本中空格分隔的单词，匹配pattern，并用replacement替换掉

# Here pattern may contain a ‘%’ which acts as a wildcard, matching any number of any characters within a word. 
# 模式中可能包含一个%通配符，匹配单词中任意个字符
# If replacement also contains a ‘%’, the ‘%’ is replaced by the text that matched the ‘%’ in pattern. 
# 如果replacement中也包含%，则%会被替换为模式中%匹配到的文本
# Only the first ‘%’ in the pattern and replacement is treated this way; any subsequent ‘%’ is unchanged."
# 仅仅pattern和replacemetn中的第一个%，会使用以上的规则，后续的%不会被替换；

# 替换可简写为 $(text:pattern=replacement)
# 还有另外一种简写：$(text:suffix=replacement)，这里没有 % 通配符


# Note: don't add extra spaces for this shorthand. It will be seen as a search or replacement term.
# 不要加不必要的空格，否则会被认为是搜索或替换的一部分

foo := a.o b.o l.a c.o

# 把.o全部改为.c
one := $(patsubst %.o,%.c,$(foo))
two := $(foo:%.o=%.c)					# 注意：foo没有写成$(foo)
three := $(foo:.o=.c)					# 注意：foo没有写成$(foo)

all:
	echo $(one)
	echo $(two)
	echo $(three)




