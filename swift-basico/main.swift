
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

func pedirNombre() -> String {
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
    
    return nombre
}

func cambiarNumeros(nombre: String) -> String {
    let numeros = [1: "uno", 2: "dos", 3: "tres", 4: "cuatro", 5: "cinco", 6: "seis", 7: "siete", 8: "ocho", 9: "nueve", 0: "cero"]
    var resultado = ""
    for letra in nombre {
        let letraEnNumero = Int(String(letra)) // Si falla la conversion a número devuelve nil
        if letraEnNumero != nil {
            let numeroEscrito = numeros[letraEnNumero!]
            resultado += numeroEscrito ?? ""
        } else {
            resultado += String(letra)
        }
    }
    return resultado
}

let nombre = cambiarNumeros(nombre: pedirNombre())
print("Hola", nombre)

