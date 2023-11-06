import Cocoa

// Definiciones

/*
 Variable: En Swift, una variable es una ubicación de memoria nombrada que se utiliza para almacenar datos. Las variables pueden contener diferentes tipos de valores, como números, texto, objetos, etc. Puedes declarar una variable utilizando la palabra clave "var" seguida de su nombre y opcionalmente un tipo de dato, como en el siguiente ejemplo:
 */

var numeroEntero: Int = 42
var nombre: String = "Juan"

/*
 En este ejemplo, hemos declarado dos variables: "numeroEntero", que almacena un valor entero (int) de 42, y "nombre", que almacena un valor de cadena (string) "Juan". Las variables pueden cambiar su valor a lo largo del tiempo, por lo que puedes reasignarles nuevos valores si es necesario:
 */

numeroEntero = 24 // Ahora la variable "numeroEntero" contiene el valor 24
nombre = "María" // Ahora la variable "nombre" contiene la cadena "María"

/*
 Constante: En Swift, una constante es una ubicación de memoria nombrada que se utiliza para almacenar datos de manera inmutable. Una vez que asignas un valor a una constante, no puedes modificarlo posteriormente. Las constantes se declaran utilizando la palabra clave "let" seguida de su nombre y opcionalmente un tipo de dato, como en el siguiente ejemplo:
 */

let pi = 3.14159
let nombre1 = "Juan"

// No se puede cambiar el valor de una constante
pi = 3.14 // Esto genera un error, ya que "pi" es una constante

/*
 En este ejemplo, hemos declarado dos constantes: "pi", que almacena el valor de Pi, y "nombre", que almacena una cadena con un nombre. Una vez que asignamos un valor a estas constantes, no podemos cambiarlo posteriormente.
 */
