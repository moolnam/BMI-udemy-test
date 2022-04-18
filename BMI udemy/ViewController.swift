//
//  ViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightText.text = "\(height) M"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        let weight = String(format: "%.2f", sender.value)
        weightText.text = "\(weight) KG"
    }
    
}

