include $(MAKE_FILE)
include tools_chain.mk		# 相当于把tools_chain.mk文件内容放到此处，则prebuild.mk可以使用tools_chain.mk中定义的变量

DST_C := $(patsubst %.c,%.d,$(LOCAL_C_SRC))
DST_C := $(foreach one,$(DST_C),$(LOCAL_OUT_PATH)/$(one))

DST_CPP := $(patsubst %.cpp,%.d,$(LOCAL_CPP_SRC))
DST_CPP := $(foreach one,$(DST_CPP),$(LOCAL_OUT_PATH)/$(one))

ALLINONE_FILE=allinone_$(LOCAL_MODULE).mk

all: $(ALLINONE_FILE)
	@echo "prebuild success: $^"
$(ALLINONE_FILE): $(DST_C) $(DST_CPP)
	@echo -e "-include \c" > $@
	@echo $^ >> $@

# 是从 $(LOCAL_OUT_PATH)/%.d 模式开始依次匹配$(DST_C)中用空格隔开的部分，对于 ./root/work/mad.d 目标，$(LOCAL_OUT_PATH)/%.d匹配到 ./root/work/mad.d时，茎(stem)为 mad
$(DST_C):$(LOCAL_OUT_PATH)/%.d:%.c			# ./root/work/mad.d:mad.c
	@mkdir -p $(dir $@)			# mkdir -p ./root/work
	@echo -e "$(dir $@)\c" > $@ # ./root/work/ > ./root/work/mad.d
	@$(CC) -M $< >> $@
	@echo -e "\t@echo ''" >> $@
	@echo -e "\t@echo '>>> compile $< ...'" >> $@
	@echo -e "\t$(CC) -c $< -o $(patsubst %.d,%.o,$@)\c" >> $@

$(DST_CPP):$(LOCAL_OUT_PATH)/%.d:%.cpp
	@mkdir -p $(dir $@)
	@echo -e "$(dir $@)\c" > $@
	@$(CPPC) -M $< >> $@
	@echo -e "\t@echo ''" >> $@
	@echo -e "\t@echo '>>> compile $< ...'" >> $@
	@echo -e "\t$(CPPC) -c $< -o $(patsubst %.d,%.o,$@)\c" >> $@

main.c:
	@echo -e "#include <stdio.h>\nint main() { printf(\"%s\\\n\", \"hello winner.\"); return 0; }" > $@
%.c:
	@touch $@
%.cpp:
	@touch $@

clean:
	rm -rf $(LOCAL_OUT_PATH) $(foo)
