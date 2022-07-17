# ${subst substr, replacement, text}				# substr 要替换的子串，replacement 替换成的，要被修改的文本
bar = $(subst not, totally, "I am not superman")	# 把"I am not superman"中的not换成totally
all:
	@echo $(bar)

# Call functions with $(fn, arguments) or ${fn, arguments}
# 则下面两种写法是一样的
# $(subst not, totally, "I am not superman")
# ${subst not, totally, "I am not superman"}