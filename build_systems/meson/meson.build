project(
  'Shared library to register and query migraine attack episodes',
  'c',
  default_options: [
    'warning_level=3',
    'c_std=gnu99'
  ],
  version : '0.0.1',
  license: 'MIT'
)

# Where to find header files when compiling the source code
includedir = include_directories('../../include')

migraine_sources = [
  '../../src/migraine.c'
]

# Header file to declaring the API for the library
# to be installed
install_headers('../../include/migraine.h')

# Shared library creation and installation
migrainelib = shared_library(
  'migraine',
  migraine_sources,
  version: '0.0.1',
  soversion: '0',
  include_directories : includedir,
  gnu_symbol_visibility : 'hidden',
  link_args : '-Wl,-e,lib_entry',
  install : true
)


# pkg-config file creation
# migraine.pc
pkg_mod = import('pkgconfig')
pkg_mod.generate(
  libraries: migrainelib,
  version : '0.0.1',
  name : 'libmigraine',
  filebase : 'migraine',
  description : 'Librería para gestionar episodios de migraña.'
)

