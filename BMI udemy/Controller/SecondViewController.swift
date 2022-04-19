//
//  SecondViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/19.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second View Controller")
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.addSubview(label)
    }
    
    
}
