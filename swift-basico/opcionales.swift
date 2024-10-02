
import Foundation

func opcionales() {
    var numeroOpcional: Float?
    numeroOpcional = 4
    
    if numeroOpcional == nil {
        print("No hay número")
    } else {
        print(numeroOpcional!)
    }
    
    print(numeroOpcional ?? 0)
}
