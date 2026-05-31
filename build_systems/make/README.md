# DIRECTORY 'make'
	The shared library is created inside the 'buildir' directory.
	All you have to do is to run ```bash ./make```
	You can also remove it by running ```bash ./make clean```

# DIRECTORY structure
## It contains two files:
1. **README.md**:
   This file.
1. **Makefile**:
	The file that allow us to build the library.
   This script only builds the library, but do not install it nor create the
   pkg-config file 'libmigraine.pc'. It does not perform tests.

## It contains zero or one directory
1. **buildir**:
   This directory only appears when the library has been created.

