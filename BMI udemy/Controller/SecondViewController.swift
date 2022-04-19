//
//  SecondViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/19.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second View Controller")
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        view.addSubview(label)
    }
    
    
}
