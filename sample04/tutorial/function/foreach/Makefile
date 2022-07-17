# The foreach function looks like this: $(foreach var,list,text). 
# It converts one list of words (separated by spaces) to another. 
# var is set to each word in list, and text is expanded for each word.
# list是要遍历的文本，var是遍历出的每个单词，text是要修改为的值

foo := how old are you						# 怎么又是你~~	：）


bar := $(foreach wrd,$(foo),$(wrd)!)		# 给 $(foo) 中的每个单词追加一个 ! 
all:
	echo $(bar)
