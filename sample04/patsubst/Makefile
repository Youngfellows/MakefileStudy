SRC_C_FILE = lsy.c test.c tracker.c
SRC_CPP_FILE = sink.cpp computer.cpp source.cpp
DST_C:=$(patsubst %.c, %.d, $(SRC_C_FILE))
DST_C:=$(foreach one, $(DST_C), ./$(one))

DST_CPP:=$(patsubst %.cpp, %.d, $(SRC_CPP_FILE))
DST_CPP:=$(foreach one, $(DST_CPP), ./$(one))

all: $(DST_C) $(DST_CPP)
	@echo "end"
	@echo $^ >> allinone