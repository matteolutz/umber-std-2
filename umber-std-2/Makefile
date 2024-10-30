UMBER = umber
UMBER_FLAGS = -t macho64 -v -c -n -i ./include

LD = ld
LD_FLAGS = -macos_version_min 13.0 -e _start

libumber-std.a: sys-macho64.o io.o strings.o
	mkdir -p ./lib/
	ar rcs ./lib/libumber-std.a ./build/sys-macho64.o ./build/io.o ./build/strings.o

sys-macho64.o: src/sys-macho64.ub
	$(UMBER) com $(UMBER_FLAGS) src/sys-macho64.ub

io.o: src/io.ub
	$(UMBER) com $(UMBER_FLAGS) src/io.ub

strings.o: src/strings.ub
	$(UMBER) com $(UMBER_FLAGS) src/strings.ub
