//
//  CalculatorBrain.swift
//  BMI udemy
//
//  Created by KimJongHee on 2022/04/21.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: Bmi?
    // 비엠아이 스트럭터 가져옴
    
    func getBmiValue() -> String {
        // 결과 값
        let bmiValue = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        // 조언
        return bmi?.text ?? "당신은 무엇일까요?"
    }
    
    func getColor() -> UIColor{
        // 배경 색
        return bmi?.color ?? UIColor.red
    }
    
    mutating func getInfomation(weight: Float, height: Float) {
        // 비엠아이 계산기 펑션
        let value = weight / (height * height)
        // 비엠아이 계산
        
        if value < 18.5 {
            // 18.5 이하엔 당신은 정상
            bmi = Bmi(value: value, text: "당신은 정상 입니다", color: UIColor.blue)
        } else if value < 24.9 {
            // 24.9 이하엔 당신은 약간 뚱뚱이
            bmi = Bmi(value: value, text: "당신은 약간 뚱뚱이 입니다", color: UIColor.yellow)
        } else {
            // 나머지는 전부 뚱뚱이
            bmi = Bmi(value: value, text: "당신은 뚱뚱이 입니다", color: UIColor.red)
        }
    }
}
