//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Winston Vakunta on 9/13/16.
//  Copyright © 2016 Winston Vakunta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var Tipcontrol: UISegmentedControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func ontap(sender: AnyObject) {
    view.endEditing(true)}
    @IBAction func CalculateTip(sender: AnyObject) {
    
    let tipPercentages = [0.18, 0.2, 0.25]
        
    let bill = Double(BillField.text!) ?? 0
    let tip = bill * tipPercentages[Tipcontrol.selectedSegmentIndex]
    let total = bill + tip
        
    TipLabel.text = String(format: "$%.2f", tip)
    TotalLabel.text = String(format: "$%.2f", total)
}
}