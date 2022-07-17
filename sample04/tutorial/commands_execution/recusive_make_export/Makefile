new_contents = "hello:\n\techo \$$(cooly)"
all:
	mkdir -p subdir
	echo -e $(new_contents) | sed 's/^ //g' > subdir/Makefile
	@cd subdir && cat Makefile
	cd subdir && $(MAKE)

# Note that variables and exports. They are set/affected globally.
cooly = "the subdirectory can see me"
export cooly
# This would nullify the line above: unexport cooly

clean:
	rm -rf subdir