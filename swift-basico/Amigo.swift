

import Foundation

class Amigo {
    var nombre: String = "Invitado"
    var email: String?
    var telefono: Int?
    var localizacion: String?
    
    init() {
        // Constructor vacío
    }
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func validarTelefono(telefono: Int) -> Bool {
        return telefono > 99999999 && telefono < 999999999 && String(telefono).first == "6"
    }
}
