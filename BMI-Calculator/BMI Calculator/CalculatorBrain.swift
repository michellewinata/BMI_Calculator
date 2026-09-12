import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Result"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / (height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat a little more!", color: UIColor(hex: "#477ABF"))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You're doing great, keep it up!", color: UIColor(hex: "#7EC151"))
        } else {
            bmi = BMI(value: bmiValue, advice: "Try to exercise more and stay active!", color: UIColor(hex: "#CC3A63"))
        }
    }
}
