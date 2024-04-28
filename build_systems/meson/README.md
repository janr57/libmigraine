# DIRECTORY 'meson'
  It is used to create the 'libmigraine' shared library to manage migraine
  attack episodes using 'Meson'
  It only compiles the library but at the time it does not run unit test an it
  does not install the library.

# DIRECTORY STRUCTURE
## It has three files
  1. **README.md**:
  This file.
  2. **LEEME.md**:
  The Spanish version of this file.
  3. **meson.build**:
  The 'Meson' configuration file to build the library.
## It has two subdirectories
  1. src_meson:
  Here you will find the 'meson.build' configuration file responsible of
  compiling the library.
  2. include_meson:
  Here you will find the 'meson.build' configuration file intended to find the
  header file which is going to be installed together with the library and
  the pkg-config file (when these are configured).

# WHAT TO DO
  The shared library is 'libmigraine.so.*'.
  'Meson' creates the library, together with some temporary files in
  the directory that we write in the command line.
  If we choose the name 'buildir' directory:
	
  $ meson setup buildir
  $ ninja -C buildir

  or, even better:

  $ meson setup buildir
  $ cd buildir
  $ meson compile

