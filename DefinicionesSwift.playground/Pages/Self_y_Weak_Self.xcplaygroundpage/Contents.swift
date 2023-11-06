//: [Previous](@previous)

import Foundation

/*
 Self: La palabra clave "self" se utiliza para hacer referencia a la instancia actual de una clase o estructura en el contexto de un método o propiedad. En Swift, es común utilizar "self" para evitar ambigüedades cuando una propiedad o variable local tiene el mismo nombre que una propiedad de instancia. Por ejemplo:
 */

class MiClase {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre // "self" se utiliza para hacer referencia a la propiedad de instancia "nombre"
    }
    
    func saludar() {
        print("Hola, mi nombre es \(self.nombre)") // "self" se utiliza para hacer referencia a la propiedad de instancia "nombre"
    }
}

/*
 En este ejemplo, utilizamos "self" para referirnos a la propiedad de instancia "nombre" dentro del inicializador y el método de la clase "MiClase". Esto ayuda a diferenciar la propiedad de instancia de la variable local con el mismo nombre.

 Es importante destacar que en muchos casos, el uso de "self" es implícito en Swift, lo que significa que no es necesario usarlo explícitamente para acceder a las propiedades y métodos de la instancia actual. Sin embargo, en situaciones donde hay ambigüedad, o cuando se necesita una referencia explícita a la instancia, "self" puede ser útil.
 */

/*
 La combinación de "weak self" es una técnica comúnmente utilizada en Swift para prevenir posibles problemas de retención cíclica o "retain cycles" que pueden ocurrir cuando se trabaja con clausuras (closures) que capturan la referencia a la instancia actual de una clase en su interior. Esta referencia circular puede hacer que la memoria no se libere adecuadamente, lo que lleva a fugas de memoria.

 El uso de "weak self" permite que la referencia a la instancia actual sea débil, lo que significa que no aumenta el recuento de referencias (retain count) de la instancia. Si la instancia actual es liberada y no hay otras referencias fuertes a ella, la referencia débil se establecerá automáticamente en nil, evitando así problemas de retención cíclica.

 Aquí tienes una explicación más detallada:

 "weak": La palabra clave "weak" se usa para declarar una referencia débil. Una referencia débil no incrementa el recuento de referencias (retain count) de la instancia a la que se refiere, y si la instancia es liberada, la referencia débil se establecerá automáticamente en nil.

 "self": La palabra clave "self" se utiliza para hacer referencia a la instancia actual de una clase en el contexto de una clausura.

 Cuando utilizas "weak self" en una clausura, estás indicando que la clausura puede hacer referencia a la instancia actual, pero de una manera débil y segura. Esto ayuda a evitar retenciones cíclicas y fugas de memoria, especialmente en situaciones donde una clausura podría vivir más allá del ciclo de vida esperado de la instancia.

 Un ejemplo común de uso de "weak self" es cuando trabajas con clausuras en operaciones asíncronas, como tareas de red o descargas de archivos, donde la clausura podría completarse después de que la instancia que la creó ya no exista.

 Aquí se muestra un ejemplo de cómo se utiliza "weak self" en una closure:
 */

class MiClase {
    func realizarTareaAsincrona(completion: @escaping () -> Void) {
        someAsyncOperation { [weak self] in
            guard let self = self else {
                return // La instancia ya no existe
            }
            // Accede a "self" de manera segura
            self.algunMetodo()
            completion()
        }
    }
}

/*
 En este ejemplo, usamos "[weak self]" para declarar una referencia débil a la instancia actual dentro de la clausura. Luego, utilizamos "guard let self = self" para desempaquetar de manera segura la referencia débil a "self" y acceder a sus propiedades o métodos dentro de la clausura. Esto asegura que no haya problemas de retención cíclica y que la instancia sea manejada correctamente.
 */

