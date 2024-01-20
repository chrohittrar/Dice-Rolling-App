//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Rohit Kuamr on 12/09/2023
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = ""
                var charIndex = 0
                let titleText = "Dice Rolling App by RohitCodes ©"
                for letters in titleText{
                    Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex) , repeats: false) { timer in
                        self.welcomeLabel.text?.append(letters)
                    }
                        charIndex += 1
                }
        
    }

    @IBAction func rollBButtonPressed(_ sender: UIButton) {
        
        // let is used for a constant elemnt where we dont want to change the value inisde
        
        // var is for a varidable simple where values will change eventually
        
        
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
//        leftDiceNumber += 1
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
//        rightDiceNumber -= 1
        
        
    }
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    
    
}

