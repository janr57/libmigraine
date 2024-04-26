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
LIBENTRYFUNC_FLAGS=-Wl,-elib_entry

SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/%.c, $(BUILDIR)/%.o, $(SRCS))
HDRS=$(wildcard $(INCLUDE)/*.h)

# The shared library and version
LIBRARY_NAME=libmigraine.so
VERSION_MAJOR=0
VERSION_MINOR=0.1

LIBRARY_MAJ_MIN=$(LIBRARY_NAME).$(VERSION_MAJOR).$(VERSION_MINOR)
LIBRARY_MAJ=$(LIBRARY_NAME).$(VERSION_MAJOR)
LIBRARY=$(LIBRARY_NAME)

all: $(BUILDIR)/$(LIBRARY_MAJ_MIN) $(BUILDIR)/$(LIBRARY_MAJ) $(BUILDIR)/$(LIBRARY)

$(BUILDIR)/$(LIBRARY_MAJ_MIN): $(OBJS) $(BUILDIR)
	$(CC) $(LBRFLAGS) $(OBJS) -o $@ $(LIBENTRYFUNC_FLAGS)
	$(info Creating $(@F):)

$(BUILDIR)/$(LIBRARY_MAJ): $(BUILDIR)/$(LIBRARY_MAJ_MIN)
	ln -sf $(<F) $@

$(BUILDIR)/$(LIBRARY): $(BUILDIR)/$(LIBRARY_MAJ_MIN)
	ln -sf $(<F) $@

$(BUILDIR)/%.o: $(SRC)/%.c $(BUILDIR)
	$(CC) $(CFLAGS) -c $< -o $@ -I$(INCLUDE)

$(BUILDIR):
	rm -rf $@
	mkdir -p $@

.PHONY: clean

clean:
	$(RM) -r $(BUILDIR)

