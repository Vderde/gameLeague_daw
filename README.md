# gameLeague_daw
Proyecto final de grado superior DAW

**Resumen**

La aplicación consta de dos partes, la web y el juego. La parte de la web, controla la presentación del juego, las reglas del mismo y un tutorial, como la visualización de una clasificación de los jugadores mediante sistema de puntos (MMR) según los resultados obtenidos en las partidas del juego. También controla el registro de nuevos usuarios y el login  para obtener el acceso al juego.

Por otro lado, la parte del juego, controla el emparejamiento de los jugadores, la partida y el resultado de la clasificación y la creación de mazos.

Es un juego de cartas de fútbol por turnos,  en el que dependiendo de la posición del tablero en el que se coloque la carta, se dará uso a su valor ya sea: ataque, control y defensa. El valor de la carta interactuará con el valor del rival que corresponda, dando un resultado para esa fila. Después del último turno el jugador que  gane dos de las tres filas, ganará la partida.

**Desplegamiento de la aplicación GameLeague.**

1. Iniciar XAMPP e Iniciar Apache y MySQL
2. Importar el archivo gamecard.sql a phpMyadmin o en su defecto al gestor de base de datos que utilice.
3. Si utiliza un usuario y contraseña en su gestor de base de datos. Dirigirse a la carpeta gameLeague -> carpeta config -> archivo config.php. Cambiar el usuario y la contraseña por los tuyos. Si no, saltese este paso.
4. Ubicar la carpeta gameLeague con su contenido en la carpeta htdocs, que se encuentra donde tenga instalado XAMPP.
5. Abrir  el navegador y escribir en la barra de direcciones localhost y selecionar la carpeta gameLeague o escribir http://localhost/gameLeague 
