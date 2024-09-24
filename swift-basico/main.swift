
print("¿Cómo te llamas?")
var nombre = readLine()!

var nombreIncorrecto = false

repeat {
    if nombre.count > 10 {
        nombreIncorrecto = true
        print("Error: Nombre demasiado largo, escribe otro")
        nombre = readLine()!
    } else if nombre.first!.isNumber {
        nombreIncorrecto = true
        print("Error: No se puede empezar con un número, escribe otro")
        nombre = readLine()!
    } else if nombre.contains("!") {
    } else {
        nombreIncorrecto = false
    }
} while nombreIncorrecto

print("Hola", nombre)
