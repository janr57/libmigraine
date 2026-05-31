# DIRECTORY 'meson'
  It is used to create the 'libmigraine' shared library to manage migraine
  attack episodes using 'Meson'
  It only compiles the library. At the time it does not run unit test an it
  does not install the library.

# DIRECTORY STRUCTURE
## It has three files
  1. **README.md**:
  This file.
  2. **LEEME.md**:
  The Spanish version of this file.
  3. **meson.build**:
  The 'Meson' configuration file to build the library.
## It has no configuration subdirectories
  It might have a build directory in which you may find the compiled library.

# WHAT TO DO
  The shared library: is 'libmigraine.so.*'.
  'Meson' creates the library, together with some temporary files in
  the directory that we write in the command line.
  The pkg-config file 'migraine.pc' can be found inside the 'meson-private'
  directory.
  If we choose the name 'buildir' directory:

  ```bash
  $ meson setup buildir
  $ ninja -C buildir
  ```

  or, even better:

  ```bash
  $ meson setup buildir
  $ cd buildir
  $ meson compile
  ```

