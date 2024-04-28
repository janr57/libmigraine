# OBJETIVO DEL DIRECTORIO 'meson'
  Se utiliza para crear la librería dinámica para gestión de episodios de migraña.
  utilizando 'Meson'.
  Aún no realiza tests ni crea el fichero pkg-config 'migraine.pc' que se puede
  instalar para que otras aplicaciones puedan enlazarse con la librería.

# ESTRUCTURA DEL DIRECTORIO
## Contiene tres ficheros
  1. LEEME.md:
     Es el fichero que está leyendo ahora.
  2. README.md:
     Es la versión inglesa de este fichero.
  3. meson.build:
     Es el fichero de configuración de 'Meson' para construir la librería, 
     probarla e instalarla.
## Contiene dos subdirectorios
  1. src_meson:
     Aquí se encuentra el fichero 'meson.build' encargado de compilar el 
     código fuente de la librería.
  2. include_meson:
     Aquí se encuentra el fichero 'meson.build', encargado de localizar el
     fichero de cabecera que se instalará, junto con la librería y el fichero
     pkg-config (cuando se añadan estas opciones). 

# CÓMO PROCEDER
  La librería dinámica que se obtiene es 'libmigraine.so.*'. 
  'Meson' prepara los ficheros necesarios para poder compilarla.
  Estos se crean en el directorio que se le indica en la línea de comandos.

  Si elegimos el directorio 'buildir' para construir la librería:

  $ meson setup buildir
  $ ninja -C buildir

  o, incluso mejor:

  $ meson setup buildir
  $ cd buildir
  $ meson compile

