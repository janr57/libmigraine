# DIRECTORY 'cmake'
  It is used to create the 'libmigraine' shared library to manage migraine
  attack episodes using 'CMake'
  It only compiles the library. At the time, it does not run unit test an it
  does not install the library.

# DIRECTORY STRUCTURE
## It has three files
  1. **README.md**:
  This file.
  2. **LEEME.md**:
  The Spanish version of this file.
  3. **CMakeLists.txt**:
  The 'Meson' configuration file to build the library, test and install it
  (when all these options are configured).
## It has no configuration subdirectories
  It might have a build directory in which you may find the compiled library.

# WHAT TO DO
  The shared library is 'libmigraine.so.*'.
  'CMake' creates the library, together with some temporary files in the
  directory that we write in the command line.
  If we choose the name 'buildir' directory, and the 'Ninja' compile system:

  ```bash
  $ cmake -S . -B buildir -G Ninja
  $ ninja -C buildir
  ```

  You could generate a 'Makefile', instead:

  ```bash
  $ cmake -S . -B buildir
  $ cd buildir
  $ make
  ```

