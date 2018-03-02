//: [Previous](@previous)

import UIKit


/**
 Algoritmo que calcula se la serie de fibonacci de los primero n numeros dadps
 - Author: Oscar Almazan Lora
 - Parameter numero: Indica el valor de la serie que queremos
 - Returns: Valor de la serie de fibonacci del numero que ingresamos
 */
func calculaFibonacci(numero : Int) -> Int{
    
    if numero == 0 || numero == 1 {
        return 1
    }else{
        return calculaFibonacci(numero: numero-1) + calculaFibonacci(numero: numero-2)
    }
    
}

calculaFibonacci(numero: 5)

//: [Next](@next)
