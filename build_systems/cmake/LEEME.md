# OBJETIVO DEL DIRECTORIO 'cmake'
  Se utiliza para crear la librería dinámica para gestión de episodios de migraña.
  utilizando 'CMake'.
  Aún no realiza tests ni crea el fichero pkg-config 'migraine.pc' que se puede
  instalar para que otras aplicaciones puedan enlazarse con la librería.

# ESTRUCTURA DEL DIRECTORIO
## Contiene tres ficheros
  1. **LEEME.md**:
     Es el fichero que está leyendo ahora.
  2. **README.md**:
     Es la versión inglesa de este fichero.
  3. **CMakeLists.txt**:
     Es el fichero de configuración de 'CMake' para construir la librería, 
     probarla e instalarla (cuando estén configuradas estas opciones).
## Contiene uno o ningún subdirectorio
   Un directorio temporal en el que se encontraría la librería compilada y otros
   ficheros intermedios.

# CÓMO PROCEDER
  La librería dinámica que se obtiene es 'libmigraine.so.*'. 
  'CMake' prepara los ficheros necesarios para poder compilarla.
  Estos se crean en el directorio que se le indica en la línea de comandos.

  Si elegimos el directorio 'buildir' para construir la librería y
  generamos ficheros intermedios 'Ninja':

  ```bash
  $ cmake -S . -B buildir -G Ninja
  $ ninja -C buildir
  ```

  También se podría generar un 'Makefile':

  ```bash
  $ camke -S . -B buildir
  $ cd buildir
  $ make
  ```

