//
//  Extensions.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 25/06/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import Foundation
import UIKit

public extension Bundle{
    func getBundle(swiftClass:  Swift.AnyClass) -> Bundle{
        guard let podBundle = Bundle(for: swiftClass.self).path(forResource: "iOSCommonUI", ofType: "bundle") else {
            return Bundle(for: swiftClass.self)
        }
        return Bundle(path: podBundle)!
    }
}
extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    func setTextFieldBorderColor(_ color:UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 0.5
    }
    
    func setDefaultLayout() {
        
        let tF = UITextField.init()
        
        var frameRect = tF.frame;
        frameRect.size.height = 50; // <-- Specify the height you want here.
        tF.frame = frameRect;
        tF.borderStyle = UITextField.BorderStyle.none
        
        
        //    return tF
        
        
    }
    
}

