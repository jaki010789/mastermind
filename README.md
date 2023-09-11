# mastermind
Juego Mastermind

<!-- Descripción -->
Este código implementa el juego de Mastermind en Ruby. Mastermind es un juego de habilidad y lógica en el que el jugador debe descubrir una secuencia de colores oculta. El juego proporciona un código secreto de colores y permite al jugador adivinar la secuencia en un número limitado de intentos.


<!-- Reglas del Juego -->

La secuencia de colores consta de 4 colores en total: rojo, verde, azul, amarillo, naranja y morado.
El jugador tiene un máximo de 12 intentos para adivinar el código secreto.Después de cada intento, se proporciona un feedback que consiste en pistas de 'black' (color correcto en la posición correcta), 'white' (color correcto en la posición incorrecta) y 'empty' (color incorrecto).

<!-- Uso del Código -->

Escoger de los colores dados 4 para adivinar el código secreto.


<!-- Métodos Clave -->

# 'initialize'
initialize:  el juego generando un código secreto aleatorio y estableciendo el número de intentos en cero, cuando se crea una nueva instancia de la clase 'Mastermind'. Su objetivo es inicializar dos variables de instancia importantes:

- @secret_code: Almacena el código secreto generado para que los jugadores adivinen.
- @jugadas: Lleva un registro del número de intentos realizados por el jugador.


### 'play'

El método `play` es el corazón del juego Mastermind. Controla el flujo principal del juego. Aquí está lo que hace:
- Muestra un mensaje de bienvenida y una breve introducción al juego.
- Muestra las opciones de colores disponibles para adivinar.
- Permite al jugador adivinar el código secreto en un bucle hasta que se alcance el número máximo de intentos (`MAX_JUGADAS`) o hasta que adivine correctamente.
- Proporciona retroalimentación al jugador después de cada intento.
- Termina el juego mostrando el código secreto si el jugador agota todos los intentos.


### 'correct_guess?'

correct_guess?: Este método comprueba si la adivinanza del jugador es igual al código secreto.


`correct_guess?` compara la adivinanza del jugador con el código secreto para verificar si es correcta. Devuelve `true` si la adivinanza es igual al código secreto y `false` en caso contrario.

### 'generate_secret_code'

Este método genera un código secreto aleatorio de colores. Utiliza la constante `CODE_LENGTH` para determinar la longitud del código y selecciona colores al azar de la lista 'COLORS'.

generate_secret_code:  este método genera un código secreto aleatorio de 4 colores seleccionados de la lista de colores disponibles.

### 'get_player_guess'


get_player_guess: Este método solicita al jugador una adivinanza y la devuelve como una lista de colores.

`get_player_guess` obtiene la adivinanza del jugador. Muestra un mensaje para que el jugador ingrese su adivinanza, registra el intento y devuelve la entrada del jugador en forma de una lista de colores en minúsculas.


### 'provide_feedback'

provide_feedback: Este método proporciona un feedback basado en la adivinanza del jugador y el código secreto.

'provide_feedback', genera retroalimentación basada en la adivinanza del jugador en comparación con el código secreto. Evalúa cada color en la adivinanza y determina si es correcto, incorrecto o está en la posición correcta. Luego, devuelve una lista de retroalimentación en forma de cadenas de colores ('black', 'white' o 'empty') en un orden aleatorio para hacerlo más desafiante.


### 'Ejecución'

el código  al final generado del archivo es para jugar a Mastermind. 

Cree una instancia del juego Mastermind: game = Mastermind.new
Llamar al método play para comenzar el juego: game.play










