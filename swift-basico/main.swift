
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

var terminar = false
var nombres: [String] = ["pepe", "ana", "roberto", "luis"]
repeat {
    print("¿Quieres meter un nombre?")
    terminar = readLine()!.first?.lowercased() != "s"
    if !terminar {
        nombres.append(cambiarNumeros(nombre: pedirNombre()))
    }
} while !terminar

let numeroLetras: (String) -> (Int) = { texto in
    texto.count }

print(nombres)
let numeroLetrasNombres = nombres.map(numeroLetras)
print(numeroLetrasNombres)

let espacio = numeroLetrasNombres.reduce(0) { (total, letras) -> Int in total + letras }

print("Los nombres ocupan", espacio, "bytes")

print("Los nombres ordenados", nombres.sorted())

print("Los nombres ordenados por tamaño", nombres.sorted { $0.count > $1.count })

print("Los nombres cortos", nombres.filter { $0.count <= 4 })

let amigos = nombres.map { Amigo(nombre: $0) }

amigos.map { print($0.nombre) }
