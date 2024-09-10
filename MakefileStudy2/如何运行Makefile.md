如何运行Makefile

[TOC]



## 如何运行Makefile

* 查找 ***makefile*** 或 ***Makefile*** 文件中最顶层项目目标，并执行最***顶层目标***的命令

  ```shell
  make
  ```
* 以 hello/test/clean 关键字为目标查找 makefile 或者 Makefile 文件，并执行 hello/test/clean 处理命令
  ```shell
  make hello
  make test
  make clean
  ```

* 查找***指定名称的Makefile文件***中最顶层项目目标，并执行最***顶层目标***的命令运行

  ```SHELL
  make -f Example1.mk
  ```

* 查找***指定名称的Makefile文件***中最顶层项目目标，并运行指定名称的目标的处理命令

  ```SHELL
  make clean -f Example6.mk
  make file1 -f Example7.mk 

  make -f Example6.mk some_file
  make -f Example6.mk other_file
  make -f Example6.mk clean

  ```

  
