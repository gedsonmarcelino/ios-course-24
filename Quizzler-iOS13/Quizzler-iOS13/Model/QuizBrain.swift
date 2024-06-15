//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Gedson Marcelino on 18/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questions: [Question] = [
        Question(question: "2 + 4 = 6?", answer: true),
        Question(question:"1 + 1 >= 5", answer: false),
        Question(question:"2 - 1 = 0", answer: false),
        Question(question: "3 * 1 = 3", answer: true),
        Question(question:"2 + 1 - 3 <= 0", answer: true),
    ]
    
    var questionNumber = 0
    
    var score = 0
    
    mutating func checkAnswer (_ userAnswer: String) -> Bool{
        let currentAnswer = userAnswer == "True"
        let result = (questions[questionNumber].answer == currentAnswer)
        
        if ( result ) {
            score += 1
        }
        
        return result
    }
    
    mutating func nextQuestion(){
        if ( questionNumber  < (questions.count - 1) ){
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func currentQuestion() -> Question {
        return questions[questionNumber]
    }
    
    func getProgress() -> Float{
        return Float(questionNumber+1)/Float(questions.count)
    }
}
