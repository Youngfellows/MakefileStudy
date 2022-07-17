.SECONDARYEXPANSION:
AVAR := top
onefile := $(AVAR)
twofile := $$(AVAR)
AVAR := bottom

myfile: $(AVAR) $$(AVAR)
	@echo $^

%:
	touch $@