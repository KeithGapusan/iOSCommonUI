//
//  ForgotPasswordView.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 11/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit
public protocol ForgotPasswordViewDelegate{
    func didPressedForgotPasswordButton(sender : [String:Any])
}

class ForgotPasswordView: UIView {
    
    @IBOutlet weak var tfEmail: UITextField!
    public let delegate : ForgotPasswordViewDelegate! = nil
    @IBAction func didPressedButton(_ sender: Any) {
        let data = ["email": tfEmail.text!] as [String:Any]
        delegate.didPressedForgotPasswordButton(sender: data)
    
        
    }
    
}
