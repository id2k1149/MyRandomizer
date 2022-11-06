//
//  RandomNumber.swift
//  MyRandomizer
//
//  Created by Max Franz Immelmann on 11/6/22.
//

import Foundation

struct RandomNumber {
    var minimumValue: Int
    var maximumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}
