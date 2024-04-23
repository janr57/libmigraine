#!/usr/bin/env sh

rm -rf buildir
mkdir buildir
gcc -Wall -g -fPIC -c -o migraine.o ../../src/migraine.c -I../../include
gcc -fPIC -shared -o libmigraine.so.0.0.1 migraine.o -Wl,-e,lib_entry
ln -sf libmigraine.so.0.0.1 libmigraine.so.0
ln -sf libmigraine.so.0.0.1 libmigraine.so
mv *.o *.so* buildir

