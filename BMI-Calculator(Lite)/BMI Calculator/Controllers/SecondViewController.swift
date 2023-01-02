//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by malkeet on 13/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController:CalculateViewController{
    
    
    var labs="0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // creating a label now
        
        view.backgroundColor=UIColor.red
        
        
        let label=UILabel()
        label.text=(labs)
        label.frame=CGRect(x: 0, y: 0, width: 100, height: 50)
        // creates a view so that its visible
        
        view.addSubview(label)
        
        
        
        
        
        
        
    }
    
}
