//
//  ResultViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/19.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultText.text = "\(bmiValue)"
    }
    
    @IBOutlet weak var resultText: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
