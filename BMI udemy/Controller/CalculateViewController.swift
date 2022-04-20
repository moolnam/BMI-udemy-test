//
//  ViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/18.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    var bmiHeight = "0.0"
    var bmiWeight = "0.0"

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
        bmiValue = String(format: "%.1f", result)
        bmiWeight = String(format: "%.1f", weight)
        bmiHeight = String(format: "%.1f", height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue1 = bmiValue
            destinationVC.height1 = bmiHeight
            destinationVC.weight1 = bmiWeight
        }
    }
}

