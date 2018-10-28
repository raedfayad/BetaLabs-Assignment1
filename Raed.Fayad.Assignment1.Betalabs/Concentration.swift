//
//  Concentration.swift
//  Raed.Fayad.Assignment1.Betalabs
//
//  Created by Raed Fayad on 2018-10-27.
//  Copyright © 2018 Raed Fayad. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    var viewedCards = [Int]()
    var flipCount = 0
    var score = 0
    var initTime: Date
    
    var indexOfOneAndOnlyFaceUpCard :Int?

    func chooseCard( at index: Int){
        if !cards[index].isMatched{
            flipCount+=1
            
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier{
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                    
                    let currdate = Date()
                    score += Int(10/Float((currdate.compare(initTime)).rawValue))
                }
                cards[index].isFaceUp=true
                indexOfOneAndOnlyFaceUpCard = nil
                
            } else{
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        if viewedCards.contains(index){
            score -= 1
        }
            viewedCards.append(index)
        }
    }
    
    init(numberOfPairsOfCards : Int) {
        initTime = Date()
        for _ in  0..<numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
        for _ in 0..<10
        {
            cards.sort { (_,_) in arc4random() < arc4random() }
        }
        
    }
}
