
func tieneCaracteresEspeciales(texto: String) -> Bool {
    let especiales = "!¡$%/()?¿+-*,.;:{}[]"
    for letra in texto {
        for especial in especiales {
            if letra == especial {
                return true
            }
        }
    }
    return false
}
/*
print("¿Cómo te llamas?")
var nombre = readLine()!

var nombreIncorrecto = false

repeat {
    if nombre.count > 10 { // Máximo 10 letras
        nombreIncorrecto = true
        print("Error: Nombre demasiado largo, escribe otro  nombre")
        nombre = readLine()!
    } else if nombre.first!.isNumber { // No emperar por número
        nombreIncorrecto = true
        print("Error: No se puede empezar con un número, escribe otro nombre")
        nombre = readLine()!
    } else if tieneCaracteresEspeciales(texto: nombre) { // Sin caracteres especiales
        nombreIncorrecto = true
        print("Error: Sólo letras y números, escribe otro  nombre")
        nombre = readLine()!
    } else {
        nombreIncorrecto = false
    }
} while nombreIncorrecto

print("Hola", nombre)
*/

opcionales()
