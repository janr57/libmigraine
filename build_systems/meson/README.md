# OBJETIVO DEL DIRECTORIO 'meson'
  Se utiliza para crear la librería dinámica para gestión de episodios de migraña.
  utilizando 'Meson'.
  Aún no realiza tests ni crea el fichero pkg-config 'migraine.pc' que se puede
  instalar para que otras aplicaciones puedan enlazarse con la librería.

# ESTRUCTURA DEL DIRECTORIO
## Contiene dos ficheros
- README.md:
  Es el fichero que está leyendo ahora.
- meson.build:
  Es el fichero de configuración de 'Meson' para construir la librería, probarla e
  instalarla.
## Contiene tres subdirectorios
- src_meson:
  Aquí se encuentra el fichero 'meson.build' encargado de compilar el código fuente
  de la librería.
- include_meson:
  Aquí se encuentra el fichero 'meson.build', encargado de localizar los ficheros
  de cabecera que se instalarán junto a la librería (cuando se añada esta 
  característica).

# OBTENCIÓN DE LA LIBRERÍA
  La librería dinámica que se obtiene es 'libmigraine.so.*'. 
  'Meson' prepara los ficheros necesarios para poder compilarla.
  Estos se crean en el directorio que se le indica en la línea de comandos.
	
	Para ello hay que seguir los siguientes pasos:
	$ meson setup buildir
	$ ninja -C buildir

    o bien:
    $ meson setup buildir
    $ cd buildir
    $ meson compile

# MÁS INFORMACIÓN
  Para conseguir más información, hay que entrar en uno de los subdirectorios y
  consultar los ficheros 'README' correspondientes.

