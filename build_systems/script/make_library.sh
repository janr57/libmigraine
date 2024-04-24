#!/usr/bin/env sh

# make_library.sh
# Run this script in order to build the library into 'buildir' directory.
# Also, run './remove_library' to remove the library and the whole 'buildir' directory.

rm -rf buildir
mkdir buildir
gcc -Wall -g -fPIC -c -o migraine.o ../../src/migraine.c -I../../include
gcc -fPIC -shared -o libmigraine.so.0.0.1 migraine.o -Wl,-e,lib_entry
ln -sf libmigraine.so.0.0.1 libmigraine.so.0
ln -sf libmigraine.so.0.0.1 libmigraine.so
mv *.o *.so* buildir

