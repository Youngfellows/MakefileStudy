# makefile 中可以命令前加上@符号，作用为命令无回显示

HelloJava.class all : HelloJava.java
	@javac HelloJava.java
	@java HelloJava