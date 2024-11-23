
#[Configs]
.PHONY: test all clean 

#[All Target]
all:

#[Clean Target]
clean:
	@$(call OOPE_FOLDER_REMOVE, test); $$null;
	@$(call OOPE_SHOW_DONE);

#[Test Target]
test:
	@echo $(OS)
	$(call OOPE_TEST,test)

#[APIs]
ifeq ($(OS), Windows_NT)
include windows.mak
else
include linux.mak
endif