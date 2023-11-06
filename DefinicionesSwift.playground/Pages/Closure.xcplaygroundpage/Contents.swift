//: [Previous](@previous)

import Foundation

/*
 Closure (Clausura): Una closure es una función sin nombre que captura y almacena referencias a variables y constantes del contexto que la rodea en el momento de su definición. Las closures en Swift son tipos de datos de "función de primera clase", lo que significa que pueden ser asignadas a variables o pasadas como argumentos a otras funciones.

 Las closures se pueden definir de varias formas en Swift, pero la forma más común es utilizando la siguiente sintaxis:
 */

{ (parámetros) -> TipoDeRetorno in
    // Código de la closure
}

let suma: (Int, Int) -> Int = { (a, b) -> Int in
    return a + b
}
let resultado = suma(3, 5) // resultado contendrá 8

/*
 En este ejemplo, hemos definido una closure que toma dos enteros como parámetros y devuelve su suma. La closure se almacena en la variable "suma" y se puede llamar como si fuera una función.

 Las closures son especialmente útiles en situaciones como el manejo de tareas asíncronas, ordenamiento de colecciones, filtrado de datos y en muchos otros escenarios donde se necesita pasar funcionalidad como argumento. También son una parte esencial de la programación funcional en Swift y se utilizan comúnmente en combinación con funciones de orden superior como "map", "filter" y "reduce" para trabajar con colecciones de datos.
 */
