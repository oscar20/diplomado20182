//
//  shuffledArray.swift
//  simpleProfile
//
//  Created by Oscar Almazan Lora on 04/03/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

//let x = [1, 2, 3].shuffled()
// x == [2, 3, 1]

//let fiveStrings = stride(from: 0, through: 100, by: 5).map(String.init).shuffled()
// fiveStrings == ["20", "45", "70", "30", ...]

//var numbers = [1, 2, 3, 4]
//numbers.shuffle()
// numbers == [3, 2, 1, 4]
