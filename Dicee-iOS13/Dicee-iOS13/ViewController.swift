//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let images = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let randDice1 = String(images.randomElement()!)
        let randDice2 = String(images.randomElement()!)
        
        diceImageView1.image = UIImage(imageLiteralResourceName: randDice1)
        
        diceImageView2.image = UIImage(imageLiteralResourceName: randDice2)
    }
    
}

