#!/usr/bin/env sh

# make_library.sh
# Run this script in order to build the library into 'buildir' directory.
# Also, run './remove_library' to remove the library and the whole 'buildir' directory.

# Variable definitions
echo 'Definitions of variables...'
dotcharacter='.'
install_prefix='/usr/local'
install_libdir='lib'
install_includedir='include'
project_name='migraine'
project_description='A shared library to manage migraine attack episodes'
project_major_version='0'
project_minor_version='0.1'
project_version=$project_major_version$dotcharacter$project_minor_version
# Creating 'buildir' directory
echo 'Creating the build directory...'
rm -rf buildir
mkdir buildir
# Compiling source files
echo 'Compiling source files...'
gcc -Wall -g -fPIC -c -o migraine.o ../../src/migraine.c -I../../include
# Creating library file and links to it
echo "Creating library file and some links to it..."
gcc -fPIC -shared -o libmigraine.so.0.0.1 migraine.o -Wl,-e,lib_entry
ln -sf libmigraine.so.0.0.1 libmigraine.so.0
ln -sf libmigraine.so.0.0.1 libmigraine.so
# Creating the pkg-config file
echo "Creating the pkg-config file..."
cp migraine.pc.in migraine.pc
sed -i "s?@INSTALL_PREFIX@?$install_prefix?g" migraine.pc
sed -i "s?@INSTALL_LIBDIR@?$install_libdir?g" migraine.pc
sed -i "s?@INSTALL_INCLUDEDIR@?$install_includedir?g" migraine.pc
sed -i "s?@PROJECT_NAME@?$project_name?g" migraine.pc
sed -i "s?@PROJECT_DESCRIPTION@?$project_description?g" migraine.pc
sed -i "s?@PROJECT_VERSION@?$project_version?g" migraine.pc
# Moving files to the build directory
echo "Moving files to the build directory..."
mv *.o *.so* *.pc buildir
echo "END"

