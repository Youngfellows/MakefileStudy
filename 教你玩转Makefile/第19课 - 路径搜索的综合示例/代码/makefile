.PHONY : all clean


DIR_BUILD := build
DIR_SRC := src
DIR_INC := inc

TYPE_INC := .h
TYPE_SRC := .c
TYPE_OBJ := .o

CC := gcc
LFLAGS :=
CFLAGS := -I $(DIR_INC)
ifeq ($(DEBUG),true)
CFLAGS += -g
endif

MKDIR := mkdir
RM := rm -fr

APP := $(DIR_BUILD)/app.out
HDRS := $(wildcard $(DIR_INC)/*$(TYPE_INC))
HDRS := $(notdir $(HDRS))
OBJS := $(wildcard $(DIR_SRC)/*$(TYPE_SRC))
OBJS := $(OBJS:$(TYPE_SRC)=$(TYPE_OBJ))
OBJS := $(patsubst $(DIR_SRC)/%, $(DIR_BUILD)/%, $(OBJS))

vpath %$(TYPE_INC) $(DIR_INC)
vpath %$(TYPE_SRC) $(DIR_SRC)

all : $(DIR_BUILD) $(APP)
	@echo "Target File ==> $(APP)"
	
$(DIR_BUILD) :
	$(MKDIR) $@
	
$(APP) : $(OBJS)
	$(CC) $(LFLAGS) -o $@ $^
	
$(DIR_BUILD)/%$(TYPE_OBJ) : %$(TYPE_SRC) $(HDRS)
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(DIR_BUILD)
	
	