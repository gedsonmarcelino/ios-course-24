//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Gedson Marcelino on 19/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String?
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblResult.text = bmiValue!
    }
    
    @IBAction func onPressRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
