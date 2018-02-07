//
//  LoginViewGoogle.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 07/02/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class LoginViewGoogle: UIView, UITextFieldDelegate {
        
        
       
        @IBOutlet public weak var btnGoogle: UIButton!
        @IBOutlet public weak var btnLogin: UIButton!
        @IBOutlet public weak var btnSignUp: UIButton!
        @IBOutlet public weak var btnForgotPass: UIButton!
        @IBOutlet public weak var ivLogo: UIImageView!
        
        @IBOutlet public weak var tfUserName: UITextField!
        @IBOutlet public weak var tfPassword: UITextField!
        @IBOutlet public var view: UIView!
        
        public required init?(coder aDecoder: NSCoder) {
            super .init(coder: aDecoder)
            let bundleIdentifier = Bundle(for: LoginView.self)
            UINib(nibName: "LoginView", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)
            addSubview(view)
            view.frame = self.bounds
        }
        
        
        
}

