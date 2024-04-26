CC = gcc

SRC = ../../src
INCLUDE = ../../include
BUILDIR = buildir

CFLAGS=-Wall -g -fPIC
INCFLAGS=-I$(INCLUDE)
LBRFLAGS=-fPIC -shared
# Flags used to add an entry in the symbol table of the library
# (in case an .interp segment was added in the source or header  files)
# in order to be able to run it in the command line and produce some
# info about itself.
INTERPFLAGS=-Wl,-elib_entry

# The shared library and version
LIBRARY_NAME=libmigraine.so
VERSION_MAJOR=0
VERSION_MINOR=0.1

LIBRARY= libmigraine.so.$(VERSION_MAJOR).$(VERSION_MINOR)

all: $(BUILDIR) $(LIBRARY)

migraine.o: $(SRC)/migraine.c $(INCLUDE)/migraine.h
	$(CC) $(CFLAGS) -c -o $@ $< $(INCFLAGS)

$(LIBRARY): migraine.o
	$(CC) $(LBRFLAGS) -o $@ $< $(INTERPFLAGS)
	ln -sf $(LIBRARY) $(LIBRARY_NAME).$(VERSION_MAJOR) 
	ln -sf $(LIBRARY) $(LIBRARY_NAME) 
	mv *.o *.so *.so.* $(BUILDIR)

.PHONY: buildir

clean:
	$(RM) -r $(BUILDIR)

$(BUILDIR):
	rm -rf $@
	mkdir $@

