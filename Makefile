UMBER = umber
UMBER_FLAGS = -i ./umber-std-2/include/ -t macho64 -v -c

LD = ld
LD_LIBS = -L ./umber-std-2/lib/ -l umber-std
LD_FLAGS = -macos_version_min 13.0 -e _start $(LD_LIBS)

SRC = main

$(SRC): $(SRC).o libumber
	$(LD) $(LD_FLAGS) -o ./build/$(SRC) ./build/$(SRC).o

$(SRC).o: $(SRC).ub
	$(UMBER) com $(UMBER_FLAGS) $(SRC).ub

libumber:
	$(MAKE) -C ./umber-std-2