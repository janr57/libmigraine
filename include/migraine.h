/*
 * migraine.h
 * Main header file for the library.
 */

#ifndef MIGRAINE_H
#define MIGRAINE_H

/* Add an .INTERP segment section to the symbol's table of the library
 * in order to run it when invoked.
 * Shared libraries don't need this,because this segment is only needed
 * in the application which links the library.
 * After building the library, you can find this segment with de command line
 * running after building the library:
 * $ objdump -t ./libmigraine.so | grep .interp
 * or
 * $ readelf -l ./libmigraine.so | grep -E '.interp|INTERP'
 */
const char service_interp[] __attribute__ ((section(".interp"))) = "/lib64/ld-linux-x86-64.so.2";

/* Main entry point of the library when run as an executable */
void lib_entry(void);

#endif /* MIGRAINE_H */
