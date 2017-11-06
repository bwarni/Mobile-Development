//
//  Item.swift
//  HorseManager
//
//  Created by Michael Warnick on 4/4/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//
import UIKit

class Item: NSObject {
    var name: String
    var age: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, serialNumber: String?, age: Int) {
        self.name = name
        self.age = age
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Gray", "Chestnut", "Bay"]
            let nouns = ["Houston", "Dream", "Gun Powder"]
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            let randomName = "\(randomNoun): \(randomAdjective)"
            let randomValue = Int(arc4random_uniform(35))
            let randomSerialNumber =
                UUID().uuidString.components(separatedBy: "-").first!
            self.init(name: randomName,
                      serialNumber: randomSerialNumber,
                      age: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, age: 0)
        }
    }
}
