//
//  ViewController.swift
//  Prework
//
//  Created by Wang Ruifan on 7/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func valueChanged(_ sender: Any) {
        //update the tip percentage as user slides
        let tipPercent = Int(tipPercentage.value)
        tipPercentageLabel.text = "\(tipPercent)" + "%"
        tipPercentageLabel.sizeToFit()
     
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tip = bill * Double(tipPercent) * 0.01
        let total = tip + bill
        
        //upadte top amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        tipAmountLabel.sizeToFit()
        
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel.sizeToFit()
    }
    
}

