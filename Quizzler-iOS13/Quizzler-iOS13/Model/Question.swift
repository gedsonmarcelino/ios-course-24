//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Gedson Marcelino on 17/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: Bool
    
    func checkAnswer(value: String) -> Bool {
        let currentAnswer = value == "True"
        return (self.answer == currentAnswer)
    }
}
