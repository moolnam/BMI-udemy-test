//
//  ViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/18.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var bmi: UILabel!
    
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var weight: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightText.text = "\(height) M!!"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(String(format: "%.0f", sender.value))
        let weight = String(format: "%.0f", sender.value)
        weightText.text = "\(weight) KG!!"
    }
    
    @IBAction func button(_ sender: UIButton) {
        print(height.value)
        print(weight.value)
        let height = height.value
        let weight = weight.value
        let result = weight / pow(height, 2)
        print(String(format: "%.2f", result))
        bmi.text = "\(String(format: "%.4f", result))"
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.2f", result)
        self.present(secondVC, animated: true, completion: nil)
    }
}

