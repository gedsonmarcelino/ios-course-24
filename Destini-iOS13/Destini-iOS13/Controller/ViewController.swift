//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func onChoice1Pressed(_ sender: UIButton) {
        setChoice("1")
    }
    
    @IBAction func onChoice2Pressed(_ sender: UIButton) {
        setChoice("2")
    }
    
    func setChoice(_ value:String){
        storyBrain.nextCurrentStory(choice: value)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getCurrentStory().story
        
        if ( storyBrain.getCurrentStory().choice1 != "" ) {
            choice1Button.setTitle(storyBrain.getCurrentStory().choice1, for: .normal)
        }
        
        if ( storyBrain.getCurrentStory().choice2 != "" ) {
            choice2Button.isHidden = false
            choice2Button.setTitle(storyBrain.getCurrentStory().choice2, for: .normal)
        } else {
            choice2Button.isHidden = true
        }
        
        if ( storyBrain.getCurrentStory().choice1 == "" || storyBrain.getCurrentStory().choice2 == "") {
            choice1Button.setTitle("Restart", for: .normal)
            choice2Button.isHidden = true
        }
    }
}

