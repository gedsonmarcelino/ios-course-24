//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var btnTrue: UIButton!
    @IBOutlet weak var btnFalse: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
        
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func onPressed(_ sender: UIButton) {        
        let userAnswer = sender.currentTitle!
        let answer = quizBrain.checkAnswer(userAnswer)
        setBackgroundColor(button: sender, value: answer)
        quizBrain.nextQuestion()
        startTimer()
    }

    func startTimer(){
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        lblQuestion.text = quizBrain.currentQuestion().question
        lblScore.text = "Score: \(quizBrain.score)"
        clearBackgroundColor()
        progressBar.progress = quizBrain.getProgress()
    }
    
    func setBackgroundColor(button: UIButton, value:Bool){
        if ( value ) {
            button.backgroundColor = UIColor.green
        } else {
            button.backgroundColor = UIColor.red
        }
    }
    
    func clearBackgroundColor(){
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
    }
    
}

