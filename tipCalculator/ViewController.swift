//
//  ViewController.swift
//  tipCalculator
//
//  Created by Ashish Patel on 12/15/19.
//  Copyright © 2019 Ashish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount
        let tipPercentages = [0.1,0.18,0.2]
        
        let bill = Double(billField.text!) ?? 0
        
        //calc tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip ammount
        tipLabel.text! = String(format: "$%.2f", tip)
        totalLabel.text! = String(format: "$%.2f", total)
    }
}

