//
//  SecondViewController.swift
//  tabbedviewexample
//
//  Created by JAY KONG on 21/11/2019.
//  Copyright © 2019 JAY KONG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var labour = ["Jeremy Corbyn", "Harriet Harman","Ed Miliband"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return labour.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return labour[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labourlabel.text = labour[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    labourParty.delegate = self
    labourParty.dataSource = self
        
    }
    
    @IBOutlet weak var labourlabel: UILabel!
    
    @IBOutlet weak var labourParty: UIPickerView!
}

