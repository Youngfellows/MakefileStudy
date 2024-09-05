如何运行Makefile

[TOC]



## 如何运行Makefile

* 运行默认的Makefile

  ```shell
  make
  ```
* 运行指定名称的Makefile文件

  ```SHELL
  make -f Example1.mk
  ```
* 运行指定的目标

  ```SHE	
  make clean
  ```

* 运行指定Makefile文件名称的指定目标

  ```SHELL
  make clean -f Example6.mk
  make file1 -f Example7.mk 
  ```

  
