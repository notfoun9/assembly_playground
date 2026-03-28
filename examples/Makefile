all: itoa input sleep count stack stack_with_macro quit

itoa: itoa.s
	@as -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

input: input.s
	@as -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

sleep: sleep.s
	@as -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

count: count.s
	@as -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

stack: stack.s
	@as -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

stack_with_macro: stack_with_macro.s
	@as $(ASFLAGS) -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o

quit: quit.s
	@as -g -o $@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@ $@.o
	@rm $@.o
