new_contents = "hello:\n\ttouch inside_file"
all:
	-mkdir subdir			# - ingore error
	printf $(new_contents) | sed 's/^ //g'> subdir/Makefile		# printf 是一个 shell命令
	cd subdir && $(MAKE)
clean:
	rm -rf subdir