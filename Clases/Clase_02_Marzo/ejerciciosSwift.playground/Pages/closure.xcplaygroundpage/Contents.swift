//: [Previous](@previous)

import UIKit


//: Closures : Funciones que no tienen nombre
// Nos permiten tener la firma de como la funcion va a trabajar

var miClosure: (Int, Int) -> Int //Siempre deben de regresar algo
var miClosure2: (Int, Int) -> Int

miClosure = {(a: Int,b: Int) -> Int in //con in sabemos que estamos en un closure
    return a + b
}

miClosure2 = {(a: Int,b: Int) -> Int in //con in sabemos que estamos en un closure
    return a * b
}

let resultado = miClosure(3,2)

func ejecutaOperacion(_ closure:(Int,Int) -> Int, a:Int, b: Int ){
    let resultado = closure(a,b)
    print(resultado)
}

ejecutaOperacion(miClosure, a: 10, b: 20)
ejecutaOperacion(miClosure2, a: 10, b: 20)
//ejecutaOperacion({a / b}, a: 15, b: 30)  //Los closures hasta el final, BUENA PRACTICA

miClosure = {(a,b) in  //Borre los tipos de datos porque ya estan definidos en la firma
    a + b  //Tomo esto como valor para regresar
}
miClosure = {  //$1 y $2 son los parametros
$0 + $1
}

//Formas de declarar un closure
var closureSinRetorno: () -> Void = {
    print("No regresaré nada")
}

var closureSinRetorno2 = { () -> Void in
    print("No regresaré nada")
}

var closureSinRetorno3 = {
    print("No regresaré nada")
}

closureSinRetorno()

//inout permite cambiar el status de la variable de constante a variable

var numero = 0
func incrementa(variable: inout Int){
    variable += 1
}

incrementa(variable: &numero)

let incrementaV2 = {
    numero += 1
}

incrementaV2()
incrementaV2()
incrementaV2()
incrementaV2()
numero


//Funcion que regresa un closure que regresa un entero

func incrementaClosure() -> () -> Int{
    var contador = 0
    let incrementa: () -> Int = {
        contador += 1
        return contador
    }
    return incrementa
}

let contador1 = incrementaClosure()
let contador2 = incrementaClosure()

contador1()
contador1()
contador2()
contador1()

let letras = ["ZZZZZZZ","CCCCC","MHHHHH","OOOOOOOOO","Hiiiiiiiiiiii"]
letras.sorted()
print(letras.sorted{
    $0.count > $1.count
})


//foreach
letras.forEach{ (String) in
    print("\(String) ")
}

let numeros = [2, 3, 4, 56, 7, 90]
numeros.forEach{
    print($0)}

let filtrados = numeros.filter{
    return $0 > 5
}

print("Numeros filtrados: \(filtrados) ")

let mapeados = numeros.map{ //permite ejeciuatr operaciones dentro de una coleccion
    return $0 * 10
}

print("Mapeados: \(mapeados)")


let letrasynumeros = ["Hola","0","adios","1","3"]

let numerosUsuario = letrasynumeros.flatMap{
    Int($0)
}

print(numerosUsuario)


let total = numeros.reduce(0){
    return $0 + $1
}

print(total)










//: [Next](@next)
