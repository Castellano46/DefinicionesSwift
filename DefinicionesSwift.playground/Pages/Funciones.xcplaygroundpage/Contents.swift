//: [Previous](@previous)

import Foundation

/*
 Función (func): En Swift, una función es un bloque de código con un nombre que realiza una tarea específica. Puedes llamar a una función en cualquier parte de tu programa para ejecutar el código contenido en esa función. Las funciones pueden tener parámetros, que son valores que se pasan a la función para que los utilice, y pueden devolver un valor como resultado. La sintaxis básica para definir una función en Swift es la siguiente:
 */

func nombreDeLaFuncion(parametro1: Tipo, parametro2: Tipo) -> TipoDeRetorno {
    // Código de la función
    return valorDeRetorno
}
 
//Por ejemplo:

func saludar(nombre: String) -> String {
    let mensaje = "¡Hola, \(nombre)!"
    return mensaje
}

let saludo = saludar(nombre: "Juan")
print(saludo) // Imprime "¡Hola, Juan!"

/*
En este ejemplo, hemos definido una función llamada "saludar" que toma un parámetro de tipo String llamado "nombre" y devuelve una cadena de saludo. Luego, llamamos a la función "saludar" con un nombre específico y almacenamos el resultado en la variable "saludo".
 */

/*
 Override (anular): La palabra clave "override" se utiliza para indicar que una subclase está reemplazando o proporcionando una implementación específica de un método que ya está definido en su superclase. La anulación es fundamental en la programación orientada a objetos, ya que permite que una subclase personalice el comportamiento heredado de su superclase.

 Para utilizar "override", debes seguir estas reglas:

 La subclase debe heredar del método de la superclase que deseas anular.
 Debes marcar el método en la subclase con la palabra clave "override".
 La firma (nombre y parámetros) del método anulado en la subclase debe coincidir con la firma del método en la superclase.
 Un ejemplo común de "override" es cuando tienes una clase base (superclase) con un método genérico y deseas que una subclase específica proporcione su propia implementación de ese método:
 */

class Animal {
    func hacerSonido() {
        print("Animal hace un sonido genérico")
    }
}

class Perro: Animal {
    override func hacerSonido() {
        print("El perro ladra")
    }
}

let animal = Animal()
let perro = Perro()

animal.hacerSonido() // Imprime "Animal hace un sonido genérico"
perro.hacerSonido()  // Imprime "El perro ladra"

/*
 En este ejemplo, la clase "Perro" hereda de la clase "Animal" y anula el método "hacerSonido" para proporcionar su propia implementación. Cuando llamamos a "hacerSonido" en una instancia de "Perro", se ejecuta la versión anulada de la función. La anulación es una característica importante de la herencia en Swift y permite la personalización de comportamientos específicos en subclases.
 */

/*
 Super: La palabra clave "super" se utiliza para referirse a la superclase desde una subclase.En Swift, la palabra clave "super" se utiliza para acceder y llamar a la implementación de un método, propiedad o inicializador de la superclase (clase padre) desde una subclase (clase hija). Esto es especialmente útil cuando se está anulando un método o propiedad en una subclase y se desea acceder a la implementación de la superclase para extenderla o modificarla. Puedes utilizar "super" en los siguientes contextos:
 */

// Llamar a un inicializador de la superclase desde un inicializador de la subclase:

class Superclase {
    var valor: Int
    init() {
        valor = 0
    }
}

class Subclase: Superclase {
    override init() {
        super.init() // Llama al inicializador de la superclase
        valor = 42 // Modifica el valor en la subclase
    }
}

// Llamar a un método o propiedad de la superclase desde la subclase cuando se está anulando ese método o propiedad:

class Superclase {
    func metodo() {
        print("Método de la superclase")
    }
}

class Subclase: Superclase {
    override func metodo() {
        super.metodo() // Llama al método de la superclase
        print("Método de la subclase")
    }
}

/*
 En el segundo ejemplo, la subclase "Subclase" anula el método "metodo" de la superclase, pero utiliza "super.metodo()" para llamar a la implementación de la superclase antes de agregar su propia lógica.

 La palabra clave "super" es útil para evitar conflictos de nombres y permitir que una subclase extienda o modifique el comportamiento de la superclase sin perder el acceso a la funcionalidad de la superclase.
 */



