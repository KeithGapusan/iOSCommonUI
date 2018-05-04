//
//  LoginViewController.swift
//  iOSCommonUITemplate
//
//  Created by Keith Randell Gapusan on 18/11/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

protocol LoginDelegate {
    func btnClicked(sender:[String:Any])
}

public class LoginView: UIView, UITextFieldDelegate {
    
    
    @IBOutlet public weak var btnFb: UIButton!
    @IBOutlet public weak var btnGoogle: UIButton!
    @IBOutlet public weak var btnLogin: UIButton!
    @IBOutlet public weak var btnSignUp: UIButton!
    @IBOutlet public weak var btnForgotPass: UIButton!
    @IBOutlet public weak var ivUserProfile: UIImageView!
    
    @IBOutlet public weak var tfUserName: UITextField!
    @IBOutlet public weak var tfPassword: UITextField!
    @IBOutlet public var view: UIView!
    var delegate : LoginDelegate?
    public required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        let bundleIdentifier = Bundle(for: LoginView.self)
            UINib(nibName: "LoginView", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)
        addSubview(view)
        
        view.frame = self.bounds
        
    }
    public var loginHandler:((_ username: String, _ password: String) -> Void)?
    
    @IBAction func login(sender: AnyObject) {
        
        if(loginHandler == nil) {
            print("No loginHandler defined")
            return
        }
        loginHandler!(tfUserName.text!, tfPassword.text!)
        //        loginHandler!(
        //            username: usernameTextfield.text!,
        //            password: passwordTextfield.text!)
        let dataGathered = ["email": tfUserName.text!, "pass":tfPassword.text!]
        delegate?.btnClicked(sender: dataGathered)
    }
}
