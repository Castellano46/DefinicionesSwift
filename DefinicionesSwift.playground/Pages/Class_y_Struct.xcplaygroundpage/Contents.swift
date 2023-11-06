//: [Previous](@previous)

import Foundation

/*
 Clase (class): En Swift, una clase es un tipo de dato definido por el programador que puede contener propiedades (variables) y métodos (funciones). Las clases se utilizan como plantillas para crear objetos, y permiten encapsular datos y comportamientos relacionados en una sola entidad. Los objetos creados a partir de una clase heredan sus propiedades y métodos, lo que facilita la reutilización del código y la organización de la lógica de un programa.

 Por ejemplo, puedes crear una clase llamada "Persona" que tenga propiedades como "nombre" y "edad", y métodos como "saludar". Luego, puedes crear objetos específicos a partir de esa clase, como "persona1" y "persona2", y acceder a sus propiedades y métodos de la siguiente manera:
 */

class Persona {
    var nombre: String
    var edad: Int

    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }

    func saludar() {
        print("Hola, mi nombre es \(nombre) y tengo \(edad) años.")
    }
}

let persona1 = Persona(nombre: "Juan", edad: 30)
let persona2 = Persona(nombre: "María", edad: 25)

persona1.saludar()
persona2.saludar()

/*
 En este ejemplo, "Persona" es una clase que define la estructura y el comportamiento de objetos de tipo "Persona". Los objetos "persona1" y "persona2" son instancias de esta clase y pueden acceder a sus propiedades y métodos. La función "saludar" es un método de la clase que permite a los objetos saludar con su nombre y edad.
 */

/*
 Struct (estructura): En Swift, una estructura es un tipo de dato que puede contener propiedades (variables) y métodos (funciones) para representar un tipo de valor compuesto. Las estructuras son tipos de valor, lo que significa que cuando se copian, se duplica el contenido de la estructura. Esto las hace ideales para representar objetos y datos simples que no necesitan herencia ni referencia a objetos. Las estructuras son inmutables por defecto, lo que significa que sus propiedades no pueden modificarse después de la creación, a menos que se marque explícitamente como "mutables" utilizando "var".

 A continuación, se muestra un ejemplo de una estructura en Swift que representa un punto en un espacio bidimensional:
 */

struct Punto {
    var x: Double
    var y: Double

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

var puntoA = Punto(x: 3.0, y: 4.0)
var puntoB = puntoA // Se copia la estructura en puntoB

puntoA.x = 5.0

print("Punto A: (\(puntoA.x), \(puntoA.y))")
print("Punto B: (\(puntoB.x), \(puntoB.y))")

/*
 En este ejemplo, "Punto" es una estructura que representa un punto en un plano bidimensional. Cuando se copia la estructura "puntoA" en "puntoB", ambos tienen su propia copia de los datos. Por lo tanto, al modificar "puntoA", "puntoB" no se ve afectado. Las estructuras son útiles cuando deseas trabajar con tipos de valor simples y livianos. */
