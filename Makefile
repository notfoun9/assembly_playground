EXECUTABLES_PATH="$(shell pwd)/executables"
export EXECUTABLES_PATH

OBJECTS_PATH="$(shell pwd)/objects"
export OBJECTS_PATH

EXAMPLES_PATH="$(shell pwd)/examples"
export EXAMPLES_PATH

UTILS_PATH="$(shell pwd)/utils"
ASFLAGS := "-I$(UTILS_PATH)"

MACROS_PATH="$(shell pwd)/macros"
ASFLAGS += "-I$(MACROS_PATH)" 
export ASFLAGS

.PHONY: utils
utils:
	@$(MAKE) --no-print-directory -C $(UTILS_PATH)

.PHONY: examples
examples:
	@$(MAKE) --no-print-directory -C $(EXAMPLES_PATH) all

