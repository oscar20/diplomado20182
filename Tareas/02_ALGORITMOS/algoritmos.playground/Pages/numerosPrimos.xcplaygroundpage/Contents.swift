//: [Previous](@previous)

import UIKit

/**
 Función que nos dice si un número es primo.
 - Author: Oscar Almazan Lora
 - Parameter numero: Valor incognito
 - Returns: String si es primo o no.
 */
func numeros_primos(numero : Int) -> String{
    
    for n in 2..<numero{
        if numero % n == 0 {
            return "No es número primo"
        }
        else{
            return "Es número primo"
        }
    }
    return ""
}

numeros_primos(numero: 311)



//: [Next](@next)
