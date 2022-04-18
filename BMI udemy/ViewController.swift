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
        // 키
        heightText.text = ""
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        // 몸무게
        weightText.text = ""
    }
    
    @IBAction func button(_ sender: UIButton) {
        print("Button Clicked!")
        
    }
    
    func upData() {
        print("Up Data Clicked!")
    }
    
    
}

