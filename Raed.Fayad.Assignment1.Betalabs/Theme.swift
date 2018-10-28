//
//  Theme.swift
//  Raed.Fayad.Assignment1.Betalabs
//
//  Created by Raed Fayad on 2018-10-27.
//  Copyright © 2018 Raed Fayad. All rights reserved.
//

import Foundation
class Theme {
    
    let themeDatabase = [["👻","☠️","😈","🤡","🎃","🙀","👀","😵","💀","👺"],["🎄","🎅","🤶","❄️","☃️","🎁","🙏","👪","🥧","🦌"],["😀","😃","😄","😁","😆","🙂","😌","😋","☺️","🤩"],["🙃","😓","😞","😔","😟","😕","😣","😖","😢","😩"],["👍","👎","👊","✊","🤛","🤜","✌️","🤟","👆","👇"],["💐","☘️","🌼","🌲","🌳","🌴","🍄","🍁","🌵","🌱"]]
    
    var themeNumber = 2
    
    func chooseTheme () -> [String]{
        let temp = themeNumber
        while (temp == themeNumber){
            self.themeNumber = Int(arc4random_uniform(UInt32(themeDatabase.count)))
        }
        return themeDatabase[themeNumber]
    }
}
