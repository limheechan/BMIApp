//
//  CalculatorBrain.swift
//  BMIApp
//
//  Created by 임희찬 on 2022/07/14.
//

import Foundation
import UIKit

struct  CalculatorBrain {
        
    var bmi : BMI?
    
    
    mutating func calculateBMI(height : Float, weight : Float )  {
        let bmiValue =   weight / pow(height, 2)
       
        
        if bmiValue < 18.5{
            
            bmi = BMI(value: bmiValue, advice: "삼겹살을 좀 더 먹어야해", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.9)  )
        }else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice:  "몸좀 치네?", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.9) )
        }else{
            
            bmi = BMI(value: bmiValue, advice: "너 돼지야 🐷", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0.9))
        }
        
        
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ??  0.0 )
        return bmiTo1DecimalPlace
//        if let bmiTo1DecimalPlace  =  bmi {
//            return String(format: "%.1f", bmiTo1DecimalPlace)
//        }else {
//            return "0.0"
//        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "피카츄 라이츄 파이리 꼬부기~  몰 ? 루"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 0.9)
    }
}
