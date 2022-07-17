
.PHONY : all compile link clean rebuild $(MODULES)

DIR_PROJECT := $(realpath .)
DIR_BUILD_SUB := $(addprefix $(DIR_BUILD)/, $(MODULES))
MODULE_LIB := $(addsuffix .a, $(MODULES))
MODULE_LIB := $(addprefix $(DIR_BUILD)/, $(MODULE_LIB))
EXTERNAL_LIB := $(wildcard $(DIR_LIBS_LIB)/*)
EXTERNAL_LIB := $(patsubst $(DIR_LIBS_LIB)/%, $(DIR_BUILD)/%, $(EXTERNAL_LIB))

APP := $(addprefix $(DIR_BUILD)/, $(APP))

define makemodule
	cd $(1) && \
	$(MAKE) all \
			DEBUG:=$(DEBUG) \
			DIR_BUILD:=$(addprefix $(DIR_PROJECT)/, $(DIR_BUILD)) \
			DIR_COMMON_INC:=$(addprefix $(DIR_PROJECT)/, $(DIR_COMMON_INC)) \
			DIR_LIBS_INC:=$(addprefix $(DIR_PROJECT)/, $(DIR_LIBS_INC)) \
			CMD_CFG:=$(addprefix $(DIR_PROJECT)/, $(CMD_CFG)) \
			MOD_CFG:=$(addprefix $(DIR_PROJECT)/, $(MOD_CFG)) \
			MOD_RULE:=$(addprefix $(DIR_PROJECT)/, $(MOD_RULE)) && \
	cd .. ; 
endef

all : compile $(APP)
	@echo "Success! Target ==> $(APP)"

compile : $(DIR_BUILD) $(DIR_BUILD_SUB)
	@echo "Begin to compile ..."
	@set -e; \
	for dir in $(MODULES); \
	do \
		$(call makemodule, $$dir) \
	done
	@echo "Compile Success!"
	
link $(APP) : $(MODULE_LIB) $(EXTERNAL_LIB)
	@echo "Begin to link ..."
	$(CC) -o $(APP) -Xlinker "-(" $^ -Xlinker "-)" $(LFLAGS)
	@echo "Link Success!"
	
$(DIR_BUILD)/% : $(DIR_LIBS_LIB)/%
	$(CP) $^ $@
	
$(DIR_BUILD) $(DIR_BUILD_SUB) : 
	$(MKDIR) $@
	
clean : 
	@echo "Begin to clean ..."
	$(RM) $(DIR_BUILD)
	@echo "Clean Success!"
	
rebuild : clean all

$(MODULES) : $(DIR_BUILD) $(DIR_BUILD)/$(MAKECMDGOALS)
	@echo "Begin to compile $@"
	@set -e; \
	$(call makemodule, $@)
	
