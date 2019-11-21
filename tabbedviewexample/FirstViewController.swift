//
//  FirstViewController.swift
//  tabbedviewexample
//
//  Created by JAY KONG on 21/11/2019.
//  Copyright © 2019 JAY KONG. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var tories = ["Boris Johnson", "Michael Gove", "Theresa May"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->
    String? {
        return tories[row]
        }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        toryLabel.text = tories[row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    Conservative.delegate = self
    Conservative.dataSource = self
    }


    @IBOutlet weak var Conservative: UIPickerView!
    @IBOutlet weak var toryLabel: UILabel!
}

