//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnTip1: UIButton!
    @IBOutlet weak var btnTip2: UIButton!
    @IBOutlet weak var btnTip3: UIButton!
    @IBOutlet weak var lblSplit: UILabel!
    @IBOutlet weak var txtTotal: UITextField!
    
    var billManager = BillManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ( segue.identifier == "goToResult"){
            let destination = segue.destination as! ResultViewController
            destination.billManager = billManager
        }
        
    }
    
    @IBAction func onPressTip(_ sender: UIButton) {
        let buttonTips = [btnTip1, btnTip2,btnTip3]
        for btnTip in buttonTips {
            if ( btnTip?.currentTitle == sender.currentTitle ){
                btnTip?.isSelected = true
                billManager.setTip(sender.currentTitle!)
            } else {
                btnTip?.isSelected = false
            }
        }
        
    }

    @IBAction func onPressSplit(_ sender: UIStepper) {
        let split = Int(sender.value)
        lblSplit.text = String(split)
        billManager.setSplit(String(split))
    }
    
    @IBAction func onPressCalculate(_ sender: Any) {
        billManager.setTotal(txtTotal.text ?? "")
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
}

