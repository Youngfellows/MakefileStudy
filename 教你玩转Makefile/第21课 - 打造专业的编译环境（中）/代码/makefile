
.PHONY : all compile link clean rebuild

MODULES := common \
           module \
           main
           
MKDIR := mkdir
RM := rm -fr

CC := gcc
LFLAGS := 

DIR_PROJECT := $(realpath .)
DIR_BUILD := build
DIR_BUILD_SUB := $(addprefix $(DIR_BUILD)/, $(MODULES))
MODULE_LIB := $(addsuffix .a, $(MODULES))
MODULE_LIB := $(addprefix $(DIR_BUILD)/, $(MODULE_LIB))

APP := app.out
APP := $(addprefix $(DIR_BUILD)/, $(APP))

all : compile $(APP)
	@echo "Success! Target ==> $(APP)"

compile : $(DIR_BUILD) $(DIR_BUILD_SUB)
	@echo "Begin to compile ..."
	@set -e; \
	for dir in $(MODULES); \
	do \
		cd $$dir && $(MAKE) all DEBUG:=$(DEBUG) && cd .. ; \
	done
	@echo "Compile Success!"
	
link $(APP) : $(MODULE_LIB)
	@echo "Begin to link ..."
	$(CC) -o $(APP) -Xlinker "-(" $^ -Xlinker "-)" $(LFLAGS)
	@echo "Link Success!"
	
$(DIR_BUILD) $(DIR_BUILD_SUB) : 
	$(MKDIR) $@
	
clean : 
	@echo "Begin to clean ..."
	$(RM) $(DIR_BUILD)
	@echo "Clean Success!"
	
rebuild : clean all