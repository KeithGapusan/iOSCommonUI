//
//  Validation.swift
//  iOSCommonUITemplate
//
//  Created by Keith Randell Gapusan on 19/11/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import Foundation
import UIKit


public class Validation: NSObject {
 public   func isValidEmail(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

 public   func login(tfEmail: UITextField ,  tfPass : UITextField) -> [Int:String]{
        var textValidation = [String]()
        var textTextFieldCode = [Int]()
        var errorList = [Int : String]()
        if (tfEmail.text?.count)! > 4 && (tfPass.text?.count)! > 5{
            if isValidEmail(email:tfEmail.text!){
                print("valid")
            }else{
                textValidation.append("Invalid email address.")
                textTextFieldCode.append(0)
                errorList[0] = "Invalid email address."
            }
        }else{
            if (tfEmail.text?.count)! == 0{
                textValidation.append("Empty email address.")
                textTextFieldCode.append(0)
                errorList[0] = "Empty email address."
                
            }else if (tfPass.text?.count)! == 0{
                textValidation.append("Empty password.")
                textTextFieldCode.append(1)
                errorList[1] = "Empty password."
            }

           else if (tfEmail.text?.count)! < 4{
                textValidation.append("Invalid email address.")
                textTextFieldCode.append(0)
                errorList[0] = "Invalid email address."

            }else if (tfPass.text?.count)! < 8 {
                textValidation.append("Invalid password.")
                textTextFieldCode.append(1)
                errorList[1] = "Invalid password."
            }        }
        if textValidation.count > 0{
           // print("\(textValidation[0])")
            print(errorList)
            return errorList
            
        }else{
            print("valid")
            
           // loginUser()
            return errorList
        }
    
    }
}
