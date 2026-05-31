# DIRECTORY 'script'
	It is used to create the 'libmigraine' shared library to manage migraine
	attack episodes using a script.
	The shared library is created inside the ```bash buildir``` directory.
	All you have to do is to run the ```bash ./make_library``` script.
	You can also remove it by running the ```bash ./remove_library``` one.
	It compiles the library and creates the pkg-config file 
	```bash migraine.pc```.
	At the time, it does not install the library, nor run unit tests.
	
# DIRECTORY structure
## It contains five files:
1. **README.md**:
   This file.
1. **LEEME.md**:
   Spanish version of this file.
1. **make_library.sh**:
   The script which builds the library inside the 'buildir' directory.
   This script only builds the library, but do not install it nor create the
   pkg-config file 'libmigraine.pc'. It does not perform tests.
   For all these things 'Meson' or 'CMake' are preferred building methods.
1. **remove_library.sh**:
   This script removes the 'buildir' directory and all its contents.
   It is safe to run it even if there is no 'buildir' directory.
   **migraine.pc.in**:
   Template file for the pkg-config file.

## It contains zero or one directory
1. **buildir**:
   This directory only appears when the library has been created.
   This directory can be securely removed.

