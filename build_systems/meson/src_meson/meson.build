migraine_sources = [
  '../../../src/migraine.c'
]

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

