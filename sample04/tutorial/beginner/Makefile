blah: blah.o
	cc blah.o -o blah	# run third
blah.o: blah.c
	cc -c blah.c -o blah.o		# run second
blah.c:
	echo "int main() { return 0; }" > blah.c	# run first