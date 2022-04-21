//
//  ResultViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/19.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValueResult: String?
    // BMI 결과 값 상자 옵셔널
    var height: String?
    // 키 값 상자 옵셔널
    var weight: String?
    // 몸무게 값 상자 옵셔널
    var adviceValue: String?
    // 조언 값 상자 옵셔널
    var uiColor: UIColor?
    // 배경 색깔 값 상자 옵셔널
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultText.text = bmiValueResult
        // 결과 값
        resultHeight.text = height
        // 키 값
        resultWeight.text = weight
        // 몸무게 값
        advice.text = adviceValue
        // 조언 값
        view.backgroundColor = uiColor
        // 배경 색깔 값
    }
    
    @IBOutlet weak var resultWeight: UILabel!
    @IBOutlet weak var resultHeight: UILabel!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var advice: UILabel!
    
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
