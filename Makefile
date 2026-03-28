EXAMPLES_PATH="$(shell pwd)/examples"
MACROS_PATH="$(shell pwd)/macros"
ASFLAGS := -I$(MACROS_PATH)
export ASFLAGS

.PHONY: examples
examples:
	@$(MAKE) -C $(EXAMPLES_PATH) all
