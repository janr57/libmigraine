# OBJETIVO DEL DIRECTORIO 'script'
	Se utiliza para crear una librería dinámica para la gestión de episodios 
	de migraña, utilizando un programa en 'bash'.
	La librería se crea en el directorio ```bash buildir```.
	Todo lo que hay que hacer es ejecutar el programa ```bash ./make_library```.
	Se puede eliminar el directorio de compilación ejecutando
	```bash ./remove_library```.
	Por ahora, se compila la librería y se crea el fichero de configuración
	pkg-config: ```bash migraine.pc```, pero no se instalan estos,  ni se 
	ejecutan tests de prueba.
	
# ESTRUCTURA DEL DIRECTORIO
## Continene cinco ficheros:
1. **LEEME.md**:
   Este fichero.
1. **README.md**:
   Versión en ingles de este fichero.
1. **make_library.sh**:
   El programa que genera la librería en el directorio ```bash buildir```.
   Este programa construye la librería y el fichero de configuración
   pkg-config: ```bash migraine.pc```, pero aún no los instala, ni ejecuta
   tests de comprobación del código.
1. **remove_library.sh**:
   Este código elimina el directorio ```bash buildir``` y su contenido.
   El directorio se puede eliminar sin problemas para el código fuente.
 **migraine.pc.in**:
   Plantilla para crear el fichero de configuración pkg-config.

## No contiene directorios
	Podría encontrarse el directorio ```bash buildir```, que solo aparece
	cuando se crea la librería.
