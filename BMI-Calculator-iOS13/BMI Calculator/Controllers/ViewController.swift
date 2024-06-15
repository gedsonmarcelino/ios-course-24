//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    @IBOutlet weak var lblHeightValue: UILabel!
    @IBOutlet weak var lblWeightValue: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculateBrain = CalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        
        destinationVC.bmiValue = calculateBrain.getValue()
        destinationVC.view.backgroundColor = calculateBrain.getColor()
        destinationVC.lblAdvice.text = calculateBrain.getAdvice()
    }

    
    @IBAction func onChangeHeight(_ sender: UISlider) {
        lblHeightValue.text = String(format: "%0.2f", sender.value)+"m"
    }
    
    @IBAction func onChangeWeight(_ sender: UISlider) {
        lblWeightValue.text = String(Int(sender.value))+"Kg"
    }
    
    @IBAction func onPressCalculte(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculate(height, weight)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
}

