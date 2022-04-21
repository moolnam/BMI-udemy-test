//
//  ViewController.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/18.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    var bmiHeight = "0.0"
    // 키 값
    var bmiWeight = "0.0"
    // 몸무게 값
    
    var calculatorBrian = CalculatorBrain()

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
        // 키 값 슬라이더
        print(String(format: "%.2f", sender.value))
        // 실시간으로 키 값 프린트하기
        let height = String(format: "%.2f", sender.value)
        // 0.00 자리로 표현해서 담기
        heightText.text = "\(height) M"
        // 키 값 담기
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        // 몸무게 값 슬라이더
        print(String(format: "%.2f", sender.value))
        // 실시간으로 몸무게 값 프린트하기
        let weight = String(format: "%.2f", sender.value)
        // 0.00 자리로 표현해서 담기
        weightText.text = "\(weight) KG"
        // 몸무게 값 담기
    }
    
    @IBAction func button(_ sender: UIButton) {
        print(height.value)
        // 키 값 프린트
        print(weight.value)
        // 몸무게 값 프린트
        let height = height.value
        // 키 값 담기
        let weight = weight.value
        // 몸무게 값 담기
        let result = weight / pow(height, 2)
        // 몸무게 / (키 * 키)
        print(String(format: "%.2f", result))
        // 결과 값 프린트
        
        bmi.text = "\(String(format: "%.2f", result))"
        // BMI 텍스트에 결과값 표현
        bmiWeight = String(format: "%.2f", weight)
        // 몸무게 텍스트에 몸무게 값 표현
        bmiHeight = String(format: "%.2f", height)
        // 키 텍스트에 키 값 표현
        
        calculatorBrian.getInfomation(weight: weight, height: height)
        // 계산 스트럭터에 겟인포메이션 함수에 슬라이더 값 넣어 작동
        // 여기서 계산이 됨
        self.performSegue(withIdentifier: "goToResult", sender: self)
        // 스토리보드에 goTOResult 라는 아이디 등록후 작동
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            // 아이덴티파이어가 고투리졸트라면
            let destinationVC = segue.destination as! ResultViewController
            // 데스티네이션뷰컨트롤러에 리졸트뷰컨트롤러
            destinationVC.bmiValueResult = calculatorBrian.getBmiValue()
            // 데스티네이션뷰컨트롤러 안에 결과 값
            destinationVC.adviceValue = calculatorBrian.getAdvice()
            // 데스티네이션뷰컨트롤러 안에 조언 값
            destinationVC.uiColor = calculatorBrian.getColor()
            // 데스티네이션뷰컨트롤러 안에 배경 색깔 값
            destinationVC.height = bmiHeight
            // 데스티네이션뷰컨트롤러 안에 키 값
            destinationVC.weight = bmiWeight
            // 데스티네이션뷰컨트롤러 안에 몸무게 값
        }
    }
}

