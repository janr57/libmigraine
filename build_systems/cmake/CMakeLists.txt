# --- BASIC INFORMATION ------------------------------------------------------
# Minimum version of CMake (the one in Debian 12)
# (it might work on earlier versions of CMake, but I have not tested it.)
cmake_minimum_required(VERSION 3.25)

# Name of the project, version, programming languages (only C here) and
# a small description.
# The name is saved in a variable called PROJECT_NAME.
# We can use this name later writing ${PROJECT_NAME}.
project(migraine
        VERSION 0.0.1
        LANGUAGES C
        DESCRIPTION "A shared library to manage migraine attack episodes."
)

# --- VARIABLE DEFINITIONS ---------------------------------------------------
# For convenience, new variables SOURCE_PATH y HEADER_PATH are defined
# Note: PROJECT_SOURCE_DIR is the directory where the CMakeLists.txt file 
# is found.
set(SOURCE_PATH ${PROJECT_SOURCE_DIR}/../../src)
set(HEADER_PATH ${PROJECT_SOURCE_DIR}/../../include)

# New variable SOURCE_FILES
set(SOURCE_FILES
  ${SOURCE_PATH}/migraine.c
)


# SOURCE_FILES variable definition
set(SOURCE_FILES
  ${SOURCE_PATH}/migraine.c
)

# API_HEADER_FILES variable definition
# It declares the header files having functions which are going to be exported
# by the library (library API declaration) and will be installed for external
# applications to use.
set(API_HEADER_FILES
  ${HEADER_PATH}/migraine.h
)

# --- ACTUAL COMPILING COMMANDS -----------------------------------------------
# Files that make the library.
add_library(${PROJECT_NAME} SHARED
  ${SOURCE_FILES}
)

# Complete version of the library.
set_target_properties(${PROJECT_NAME} PROPERTIES
  VERSION ${PROJECT_VERSION}
)

# Major version of the library.
set_target_properties(${PROJECT_NAME} PROPERTIES
  SOVERSION ${PROJECT_VERSION_MAJOR}
)

# Tell the compiler to look for header files saved in the HEADER_PATH variables
target_include_directories(${PROJECT_NAME} PRIVATE
  ${HEADER_PATH}
)

# Pass the 'lib_entry' function to the linker in order ot make the
# library executable from the command line.
target_link_options(${PROJECT_NAME} PRIVATE -elib_entry)

# --- INSTALLATION -----------------------------------------------------------
include(GNUInstallDirs)

# Header files exposing the library API
# These will be installed in an accesible place for client applications to use
set_target_properties(${PROJECT_NAME} PROPERTIES
  PUBLIC_HEADER ${API_HEADER_FILES}
)

# Installation details
install(TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})


# --- PKG-CONFIG file 'migraine.pc' creation from template 'migraine.pc.in' ---
configure_file(${PROJECT_NAME}.pc.in ${PROJECT_NAME}.pc @ONLY)

# Instalar el fichero pkg-config que se ha generado: 'migraine.pc'
install(FILES ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.pc
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)

