//
//  ViewController.swift
//  tipCalculator
//
//  Created by Ashish Patel on 12/15/19.
//  Copyright © 2019 Ashish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount
                let tipPercentages = tipSlider.value
                tipPercentageLabel.text! = String(format: "%.2f", tipSlider.value*100)+"%"
                
                let bill = Double(billField.text!) ?? 0
                
                //calc tip and total
                let tip = bill * Double(tipPercentages)
                let total = bill + tip
                
                //update the tip ammount
                tipLabel.text! = String(format: "$%.2f", tip)
                totalLabel.text! = String(format: "$%.2f", total)
    }
}

