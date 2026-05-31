# OBJETIVO DEL DIRECTORIO 'cmake'
  Se utiliza para crear la librería dinámica para gestión de episodios de migraña.
  utilizando 'CMake'.
  Por ahora, compila e instala la librería, fichero de cabecera y el fichero pkg-config.
  Aún no realiza tests.

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
   ficheros intermedios, que se podría borrar sin problemas, pues no pertenece
   al código fuente. Así, si se ha elegido el nombre 'buildir' al directorio
   donde se compila la librería, se puede borrar:
   ```bash
   $ cd build_systems
   $ cd cmake
   $ rm -rf buildir
   ```
   
# CÓMO PROCEDER
  La librería dinámica que se obtiene es 'libmigraine.so.*'. 
  'CMake' prepara los ficheros necesarios para poder compilarla.
  Estos se crean en el directorio que se le indica en la línea de comandos.

  Si elegimos el directorio 'buildir' para construir la librería y
  generamos ficheros intermedios 'Ninja':

  ```bash
  $ cmake -S . -B buildir -G Ninja
  $ ninja -C buildir
  $ cd build
  $ sudo ninja install
  ```

  También se podría generar un 'Makefile':

  ```bash
  $ camke -S . -B buildir
  $ cd buildir
  $ make
  $ sudo make install
  ```

