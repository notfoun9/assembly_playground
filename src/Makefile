all: grid pieces positions colors shadow

grid: grid.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<

pieces: pieces.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<

positions: positions.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<

colors: colors.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<

shadow: shadow.s
	@as $(ASFLAGS) -g -o $(OBJECTS_PATH)/$@.o $<
