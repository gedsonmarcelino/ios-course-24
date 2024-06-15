//
//  BillManager.swift
//  Tipsy
//
//  Created by Gedson Marcelino on 19/05/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

struct BillManager {
    var bill:Bill
    
    let values = [
        "0%": 0,
        "10%": 0.1,
        "20%": 0.2
    ]
    
    init() {
        self.bill = Bill()
    }
    
    mutating func setTip(_ key:String){
        bill.tip = key
    }
    
    mutating func setSplit(_ value:String){
        bill.split = Int(value)!
    }
    
    mutating func setTotal(_ value:String){
        bill.total = Float(value)!
    }
    
    func calculate() -> Float{
        let tip = values[bill.tip]!
        let value = (bill.total / Float(bill.split))
        return value + (value * Float(tip))
    }
    
    func getDescription() -> String {
        return "Split between \(bill.split) people, with \(bill.tip) tip."
    }
}
