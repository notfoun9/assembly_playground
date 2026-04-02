EXECUTABLES_PATH="$(shell pwd)/executables"
export EXECUTABLES_PATH

OBJECTS_PATH="$(shell pwd)/objects"
export OBJECTS_PATH

EXAMPLES_PATH="$(shell pwd)/examples"
export EXAMPLES_PATH

SOURCES_PATH="$(shell pwd)/src"
UTILS_PATH="$(shell pwd)/utils"
ASFLAGS := "-I$(UTILS_PATH)"

MACROS_PATH="$(shell pwd)/macros"
ASFLAGS += "-I$(MACROS_PATH)" 
export ASFLAGS


all: prepare utils sources main

prepare:
	@mkdir -p objects
	@mkdir -p executables

sources:
	@$(MAKE) --no-print-directory -C $(SOURCES_PATH) all

main: main.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<
	@ld -o $(EXECUTABLES_PATH)/$@   \
		$(OBJECTS_PATH)/pieces.o    \
		$(OBJECTS_PATH)/grid.o      \
		$(OBJECTS_PATH)/shadow.o    \
		$(OBJECTS_PATH)/positions.o \
		$(OBJECTS_PATH)/colors.o    \
		$(OBJECTS_PATH)/utils.o     \
		$(OBJECTS_PATH)/iomanip.o   \
		$(OBJECTS_PATH)/$@.o

.PHONY: utils
utils:
	@$(MAKE) --no-print-directory -C $(UTILS_PATH) all

.PHONY: examples
examples:
	@$(MAKE) --no-print-directory -C $(EXAMPLES_PATH) all

