//: [Previous](@previous)

import Foundation

/*
 La función "map" es una función de orden superior en Swift que se utiliza para transformar los elementos de una colección (como un array, un diccionario o un conjunto) aplicando una operación o función a cada elemento de la colección y generando una nueva colección con los resultados de estas transformaciones. "map" es una de las funciones más útiles en programación funcional y es una forma eficiente de aplicar una operación a todos los elementos de una colección sin necesidad de bucles explícitos.
 */

func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]

/*
 
 La función "map" es una función de orden superior en Swift que se utiliza para transformar los elementos de una colección (como un array, un diccionario o un conjunto) aplicando una operación o función a cada elemento de la colección y generando una nueva colección con los resultados de estas transformaciones. "map" es una de las funciones más útiles en programación funcional y es una forma eficiente de aplicar una operación a todos los elementos de una colección sin necesidad de bucles explícitos.

 La firma típica de la función "map" es la siguiente:

 swift
 Copy code
 func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]
 "transform" es una función que toma un elemento de la colección y devuelve otro elemento de tipo T.
 "rethrows" indica que la función "map" puede propagar errores que se originen en la función "transform".
 El resultado de la función "map" es un nuevo array que contiene los elementos transformados.
 Ejemplo de uso de "map" con un array:
 */

let numeros = [1, 2, 3, 4, 5]
let cuadrados = numeros.map { numero in
    return numero * numero
}
print(cuadrados) // Imprime [1, 4, 9, 16, 25]

/*
 En este ejemplo, hemos aplicado la función "map" al array "numeros" para calcular el cuadrado de cada número en la colección, generando un nuevo array llamado "cuadrados".

 La función "map" es muy útil para realizar transformaciones en una colección de datos y es parte fundamental de la programación funcional en Swift. Puede simplificar el código y hacer que las transformaciones de datos sean más legibles y concisas.
 */

/*
 En una clase (el "delegado") se encarga de delegar ciertas responsabilidades o acciones a otra clase. El patrón de delegado se implementa mediante la propiedad .delegate.

 A menudo, se utiliza en el contexto de las clases de UIKit, como UIViewControllers y objetos UIView, para permitir la personalización y extensibilidad de su comportamiento. Cuando una clase tiene una propiedad .delegate, otras clases pueden asignarse como delegados para responder a eventos o tomar decisiones específicas.

 Por ejemplo, una clase UIViewController puede tener una propiedad .delegate, y un objeto que se asigna como delegado a esta propiedad puede responder a eventos de ciclo de vida del view controller, como cuando se carga, aparece en pantalla, desaparece, etc. De esta manera, el delegado tiene la oportunidad de personalizar el comportamiento del view controller.

 La implementación del patrón de delegado generalmente implica los siguientes pasos:

 Definir un protocolo que describe las funciones o propiedades que la clase delegada debe implementar. Esto define la interfaz que el delegado debe seguir.

 Agregar una propiedad .delegate a la clase que delega la responsabilidad, típicamente con el tipo del protocolo definido.

 En la clase delegada, se llama a métodos o se accede a propiedades del delegado en momentos específicos para permitirle influir en el comportamiento.

 Otra clase puede actuar como delegado si cumple con el protocolo y se asigna a la propiedad .delegate.
 */

// 1. Definir un protocolo
protocol MiViewControllerDelegate: class {
    func viewControllerDidFinish(_ viewController: MiViewController)
}

class MiViewController {
    // 2. Agregar una propiedad .delegate
    weak var delegate: MiViewControllerDelegate?
    
    func finalizar() {
        // 3. Llamar a un método del delegado
        delegate?.viewControllerDidFinish(self)
    }
}

// 4. Otra clase implementa el protocolo y se asigna como delegado
class OtraClase: MiViewControllerDelegate {
    func viewControllerDidFinish(_ viewController: MiViewController) {
        // Realizar acciones cuando el view controller finaliza
    }
}

let miViewController = MiViewController()
let delegado = OtraClase()
miViewController.delegate = delegado

miViewController.finalizar() // Llama a viewControllerDidFinish en el delegado

/*
 En este ejemplo, MiViewController delega la responsabilidad de finalizar a un delegado que cumple con el protocolo MiViewControllerDelegate. Cuando se llama a finalizar(), se activa el método viewControllerDidFinish en el delegado, permitiendo que la otra clase realice acciones específicas.
 */
