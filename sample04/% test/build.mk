include allinone_work.mk
include $(MAKE_FILE)
include tools_chain.mk

DST_C_OBJ := $(patsubst %.c,%.o,$(LOCAL_C_SRC))
DST_C_OBJ := $(foreach one,$(DST_C_OBJ),$(LOCAL_OUT_PATH)/$(one))

DST_CPP_OBJ := $(patsubst %.cpp,%.o,$(LOCAL_CPP_SRC))
DST_CPP_OBJ := $(foreach one,$(DST_CPP_OBJ),$(LOCAL_OUT_PATH)/$(one))

DST_FILE := work

all: $(DST_FILE)
	@echo "build success: $^"

$(DST_FILE): $(DST_C_OBJ) $(DST_CPP_OBJ)
	$(CPPC) -o $(DST_FILE) $(DST_C_OBJ) $(DST_CPP_OBJ)

clean:
	rm -rf $(DST_C_OBJ) $(DST_CPP_OBJ) $(DST_FILE)