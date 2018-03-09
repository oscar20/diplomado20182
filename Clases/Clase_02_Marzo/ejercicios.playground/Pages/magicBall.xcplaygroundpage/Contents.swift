//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func magicEightBal(){
    let randomNum = arc4random_uniform(UInt32 (5))
    switch randomNum {
    case 1:
        print("Have a nice day!")
    case 2:
        print("You`re welcome")
    case 3:
        print("Thanks")
    case 4:
        print("Hi")
    case 5:
        print("Welcome")
    default:
        print("Ceero")
    }
}

magicEightBal()
magicEightBal()
magicEightBal()
magicEightBal()




