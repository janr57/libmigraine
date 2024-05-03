CC = gcc

PREFIX=/usr/local

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
BASE_NAME=migraine
VERSION_MAJOR=0
VERSION_MINOR=0.1

LIBRARY_MAJ_MIN=lib$(BASE_NAME).so.$(VERSION_MAJOR).$(VERSION_MINOR)
LIBRARY_MAJ=lib$(BASE_NAME).so.$(VERSION_MAJOR)
LIBRARY=lib$(BASE_NAME).so

# --- PKG-CONFIG -------------------------------------------------------------
define PKG_CONFIG
prefix=$(PREFIX)
exec_prefix=$$(prefix)
includedir=$$(prefix)/include
libdir=$$(prefix)/lib

Name: lib$(BASE_NAME)
Description: Library to manage migraine attack episodes
Version: $(VERSION_MAJOR).$(VERSION_MINOR)
Cflags: -I$$(includedir)
Libs: -L$$(libdir) -l$(BASE_NAME)
endef
# ----------------------------------------------------------------------------

all: $(BUILDIR)/$(LIBRARY_MAJ_MIN) $(BUILDIR)/$(LIBRARY_MAJ) $(BUILDIR)/$(LIBRARY) $(BUILDIR)/$(BASE_NAME).pc 

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

$(BUILDIR)/$(BASE_NAME).pc: 
	$(file > $@,$(PKG_CONFIG))

.PHONY: clean

clean:
	$(RM) -r $(BUILDIR)

