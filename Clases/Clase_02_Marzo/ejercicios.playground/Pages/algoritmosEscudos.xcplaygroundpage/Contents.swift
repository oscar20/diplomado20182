//: [Previous](@previous)

import UIKit

func juegoMetralleta(){
    
    var escudos: Int = 5
    var conteoBalasDisparos: Int = 0
    var armaSobreCalemntada: Bool = false
    
    while escudos > 0 {
        for e in 1...200{
            conteoBalasDisparos += 1
            print("Pum! \(conteoBalasDisparos)")
            if e == 200 {
                escudos -= 1
                conteoBalasDisparos = 0
                print("Arma sobrecalentada..!")
                armaSobreCalemntada = true
                sleep(5)
            }
        }
    }
    print("Game Over")
    
}

juegoMetralleta()

//: [Next](@next)
