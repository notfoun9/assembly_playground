all: utils_test utils

utils: utils.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<

utils_test: test.s
	@as $(ASFLAGS) -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $(OBJECTS_PATH)/utils.o $@.o
	@rm $@.o
