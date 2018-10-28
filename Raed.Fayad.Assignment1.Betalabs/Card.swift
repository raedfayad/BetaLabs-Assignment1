//
//  Card.swift
//  Raed.Fayad.Assignment1.Betalabs
//
//  Created by Raed Fayad on 2018-10-27.
//  Copyright © 2018 Raed Fayad. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
