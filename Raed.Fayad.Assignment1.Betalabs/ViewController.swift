//
//  ViewController.swift
//  Raed.Fayad.Assignment1.Betalabs
//
//  Created by Raed Fayad on 2018-10-27.
//  Copyright © 2018 Raed Fayad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count+1)/2)
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else{
            print("Chosen card not in cardButtons.\n")
        }
    }
    
    @IBOutlet weak var newGameButton: UIButton!
    @IBAction func newGamePressed(_ sender: UIButton) {
        updateTheme()
        game = Concentration(numberOfPairsOfCards: (cardButtons.count+1)/2)
        game.flipCount = 0
        updateViewFromModel()
    }
    
    func updateViewFromModel(){
        flipCountLabel.text = "Flips: \(game.flipCount)"
        scoreLabel.text = "Score: \(game.score)"
        
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }else{
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0): newGameButton.backgroundColor
            }
        }
    }
 
    let theme = Theme()
    lazy var emojiChoices = theme.chooseTheme()
    
    func updateTheme(){
        emojiChoices = theme.chooseTheme()
        let choice = theme.themeNumber
        
        if (choice == 0){
            view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 1, green: 0.5737984776, blue: 0, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 1, green: 0.5737984776, blue: 0, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 1, green: 0.5737984776, blue: 0, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)

            
            
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 1, green: 0.5737984776, blue: 0, alpha: 1)
                }
        }
        else if (choice == 1){
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)

            
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            }
        }
        else if (choice == 2){
            view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)

            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            }
        }
        else if (choice == 3){
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)


            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            }
        }
        else if (choice == 4){
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            }
        }
        else if (choice == 5){
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            flipCountLabel.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            scoreLabel.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            newGameButton.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            newGameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            
            for index in cardButtons.indices{
                cardButtons[index].backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            }
        }
    }
    var emoji = [Int:String]()
    
    func emoji (for card : Card) -> String{
        if emoji[card.identifier] == nil, emojiChoices.count > 0{
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }


}
