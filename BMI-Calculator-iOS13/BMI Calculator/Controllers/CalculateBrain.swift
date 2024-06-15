//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Gedson Marcelino on 19/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    var bmi:BMI?
    
    mutating func calculate(_ height:Float, _ weight:Float) {
        let value = weight / pow(height, 2)
        
        var advice = "Over Weight"
        var color:UIColor = .red
        if ( value < 18.5 ){
            advice = "Underweight"
            color = .green
        } else if (value >= 18.5 && value < 25) {
            advice = "Normal weight"
            color = .blue
        }
        
        print(advice, value, color)
        bmi = BMI(value: value, advice: advice, color: color)
    }
    
    func getValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .blue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Normal weight"
    }
}
