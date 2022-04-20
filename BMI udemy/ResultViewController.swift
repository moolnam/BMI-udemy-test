//
//  ResultViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/19.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue1: String?
    // BMI 값을 모른다.
    var height1: String?
    var weight1: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultText.text = "\(bmiValue1!)"
        resultWeight.text = "\(weight1!)"
        resultHeight.text = "\(height1!)"
    }
    
    @IBOutlet weak var resultWeight: UILabel!
    @IBOutlet weak var resultHeight: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
