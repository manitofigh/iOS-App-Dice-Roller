//
//  ViewController.swift
//  Dice Roller
//
//  Created by Mani Tofigh on June 25th, 2021.
//  Copyright © 2023 Mani Tofigh. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var DiceCounter: UILabel!
    
    var diceNumCounter = 0
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = diceArray.randomElement() // randomElement() looks inside the array list and chooses a random element from inside the array. No difference with [Int.random(in: x...y)]
        diceImageView2.image = diceArray.randomElement()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image =  diceArray[Int.random(in:0...5)]
        diceImageView2.image =  diceArray[Int.random(in:0...5)]
        
    }
}

