# OBJETIVO DEL DIRECTORIO 'meson'
  Se utiliza para crear la librería dinámica para gestión de episodios de migraña.
  utilizando 'Meson'.
  Aún no realiza tests ni crea el fichero pkg-config 'migraine.pc' que se puede
  instalar para que otras aplicaciones puedan enlazarse con la librería.

# ESTRUCTURA DEL DIRECTORIO
## Contiene tres ficheros
  1. **LEEME.md**:
     Es el fichero que está leyendo ahora.
  2. **README.md**:
     Es la versión inglesa de este fichero.
  3. **meson.build**:
     Es el fichero de configuración de 'Meson' para construir la librería, 
     probarla e instalarla.
## No contiene subdirectorios de configuración
   Podría contener un directorio que contendría las librerías compiladas.

# CÓMO PROCEDER
  La librería dinámica que se obtiene es 'libmigraine.so.*'. 
  'Meson' prepara los ficheros necesarios para poder compilarla.
  Estos se crean en el directorio que se le indica en la línea de comandos.
  El fichero pkg-config, 'migraine.pc' se puede encontrar en el directorio
  'meson-private'.
  Si elegimos el directorio 'buildir' para construir la librería:

  ```bash
  $ meson setup buildir
  $ ninja -C buildir
  ```

  o, incluso mejor:

  ```bash
  $ meson setup buildir
  $ cd buildir
  $ meson compile
  ```
