//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var progressionBar: UIProgressView!
    
    let SECONDS = 1
    
    let times: [String:Int] = [
        "Soft": 5,
        "Medium": 8,
        "Hard": 12
    ]
    
    var limitInSeconds = 0
    var counter = 0
    
    var timer = Timer()
    
    var initLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLabel = lblTitle.text!
    }
    
    @objc func updateCounter(){
        if ( counter < limitInSeconds ){
            counter += 1
            progressionBar.setProgress(Float(counter)/Float(limitInSeconds), animated:true)
        } else {
            timer.invalidate()
            lblTitle.text = initLabel + " \n Done!"
        }
    }
    
    @IBAction func handlePressed(_ sender: UIButton) {
        let key = sender.currentTitle
        startCounter(value: times[key!]!)
    }
    
    func startCounter(value:Int){
        timer.invalidate()
        
        lblTitle.text = initLabel
        progressionBar.progress = 0
        
        counter = 0
        limitInSeconds = value * SECONDS
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

}
