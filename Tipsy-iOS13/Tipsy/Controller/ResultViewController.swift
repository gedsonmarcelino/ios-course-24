//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Gedson Marcelino on 19/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lblTotalPerPerson: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var billManager:BillManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTotalPerPerson.text = String(format: "%.2f", Float(billManager?.calculate() ?? 0))
        lblDescription.text = billManager?.getDescription()
    }
    
    @IBAction func onPressRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
