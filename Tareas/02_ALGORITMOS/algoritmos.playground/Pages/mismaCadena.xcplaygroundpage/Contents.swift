//: [Previous](@previous)

import UIKit

/**
 ## Funcón para regresar si existen los mismos caracteres en dos cadenas.
 - Author: Oscar Almazan Lora
 - Parameter cadena1: String a comparar
 - Parameter cadena2: String a comparar
 - Returns: String si tienen los mismos caracteres o no
 
 */

func mismaCadena(cadena1 : String, cadena2 : String) -> String{
    
    if cadena1.count == cadena2.count && cadena1.sorted() == cadena2.sorted() {
        return "Mismos caracteres incluidos en la cadena"
    }else{
        return "No existen los mismos caracteres"
    }
}

mismaCadena(cadena1: "abc", cadena2: "acbd")

//: [Next](@next)
