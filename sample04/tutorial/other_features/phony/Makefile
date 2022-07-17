some_file:
	touch some_file
	touch clean

.PHONY: clean				# 指明 clean 是一个伪目标，让make知道clean不是一个文件（目标）;这样即使有clean文件，也会执行伪目标的命令
clean:						# 如果没有 .PHONY clean 时，则会把 clean当作是一个文件，因此make clean 会提示 make: 'clean' is up to date.
	rm -rf some_file

# Adding .PHONY to a target will prevent make from confusing the phony target with a file name. 
# In this example, if the file clean is created, make clean will still be run. 