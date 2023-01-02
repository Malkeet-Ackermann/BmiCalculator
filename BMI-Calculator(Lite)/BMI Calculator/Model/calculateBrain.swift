
import Foundation
struct calculatorBrain{
    var BMI:Float?
    
    
    
    
    
    mutating func calculate(height:Float,weight:Float){
        BMI=weight/(height*height)
        // connect with  result and show advice 🤣
       
        
        
    }
    func returnBMI()->String{
        // F Un, check 4 nil, optional Binding, Nil coalescing, optional chaining
      
        let b:Float=(BMI) ?? 0.0
        return String(round(10*b)/10)
        
        
    }
    mutating func advice(BMI: String)->String{
        if(Float(BMI)! < 18.5){
            return "Eat More and Worry less !"
        }
        else if(Float(BMI)! < 24.9 && Float(BMI)! > 18.5){
            return "Perfect, Dont Worry!!!"
        }
        else {
            return "You gotta hit the Gym !!"
        }
    }
    
    
    
}
