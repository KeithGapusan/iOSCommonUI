//
//  LoginViewController.swift
//  iOSCommonUITemplate
//
//  Created by Keith Randell Gapusan on 18/11/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public protocol LoginWagtalesViewDelegate {
    func didPressedButton(button:UIButton ,data:[String:Any]?)
    func btnClicked(sender:[String:Any])
}

public class LoginViewWagtales: UIView, UITextFieldDelegate {
    
    
    @IBOutlet public weak var labelTitle: UILabel!
    @IBOutlet public weak var labelTitleEmail: UILabel!
    @IBOutlet public weak var labelTitlePassword: UILabel!
    
    @IBOutlet public weak var btnFb: UIButton!
    @IBOutlet public weak var btnGoogle: UIButton!
    @IBOutlet public weak var btnLogin: UIButton!
    @IBOutlet public weak var btnSignUp: UIButton!
    @IBOutlet public weak var btnForgotPass: UIButton!
    @IBOutlet public weak var ivUserProfile: UIImageView!
    @IBOutlet public weak var viewLine1: UIView!
    @IBOutlet public weak var viewLine2: UIView!
    @IBOutlet public weak var connectWith: UILabel!
    @IBOutlet public weak var tfUserName: UITextField!
    @IBOutlet public weak var tfPassword: UITextField!
    @IBOutlet public weak var labelFooter: UILabel!
    @IBOutlet public weak var labelTfStatus:UILabel!
    @IBOutlet public weak var viewTfEmailLine:UIView!
    @IBOutlet public weak var viewTfPassLine:UIView!
    
    @IBOutlet public var view: UIView!
    public var delegate : LoginWagtalesViewDelegate?
//    var shared = LoginView()
    
 //   public var loginHandler:((_ username: String, _ password: String) -> Void)?
    
    
    
    public required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        let bundleIdentifier = Bundle().getBundle(swiftClass: LoginViewWagtales.self)
        UINib(nibName: "LoginViewWagtales", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        
    }

    public func setLineColor(lineColor : UIColor){
        self.viewLine1.backgroundColor = lineColor
        self.viewLine2.backgroundColor = lineColor
    }
    
    public func setColorConnectWith(_  sender : UIColor){
        self.connectWith.textColor  = sender
    }
    
    public func setButtonTitleForgotPasswordColor(_ color : UIColor){
        self.btnForgotPass.titleLabel?.textColor = color
    }
    
    public func setButtonSignupColor(_ color: UIColor){
        self.btnSignUp.titleLabel?.textColor = color
    }
    
    public func initButtonFogotPass(_ cornerRadius : CGFloat , _ backgroudColor: UIColor , _ textColor: UIColor , _  title : String, font :  UIFont ){
        self.btnForgotPass.backgroundColor = backgroudColor
        self.btnForgotPass.setTitleColor(textColor, for: .normal)
        self.btnForgotPass.titleLabel?.font = font
        setButtonRadius(self.btnForgotPass, cornerRadius)
        self.btnForgotPass.setTitle(title, for: .normal)
    }
    
    public func initButtonLogin(_ cornerRadius : CGFloat , _ backgroudColor: UIColor , _ textColor: UIColor , _  title : String, font :  UIFont ){
        self.btnLogin.backgroundColor = backgroudColor
        self.btnLogin.setTitleColor(textColor, for: .normal)
        self.btnLogin.titleLabel?.font = font
        setButtonRadius(self.btnLogin, cornerRadius)
        self.btnLogin.setTitle(title, for: .normal)
    }
    
    public func initButtonFacebook(_ cornerRadius : CGFloat , _ backgroudColor: UIColor , _ textColor: UIColor , _  title : String, font :  UIFont ){
        self.btnFb.backgroundColor = backgroudColor
        self.btnFb.setTitleColor(textColor, for: .normal)
        self.btnFb.titleLabel?.font = font
        setButtonRadius(self.btnFb, cornerRadius)
        self.btnFb.setTitle(title, for: .normal)
    }
    
    public func initButtonGoogle(_ cornerRadius : CGFloat , _ backgroudColor: UIColor , _ textColor: UIColor , _  title : String, font :  UIFont ){
        self.btnGoogle.backgroundColor = backgroudColor
        self.btnGoogle.titleLabel?.font = font
        setButtonRadius(self.btnGoogle, cornerRadius)
        self.btnGoogle.setTitle(title, for: .normal)
        self.btnGoogle.setTitleColor(textColor, for: .normal)
    }
    
    public func initButtonSignUp(_ cornerRadius : CGFloat , _ backgroudColor: UIColor , _ textColor: UIColor , _  title : String, font :  UIFont ){
        self.btnSignUp.backgroundColor = backgroudColor
        self.btnSignUp.setTitleColor(textColor, for: .normal)
        self.btnSignUp.titleLabel?.font = font
        setButtonRadius(self.btnSignUp, cornerRadius)
        self.btnSignUp.setTitle(title, for: .normal)
    }
    
    public func setCornerRadius(_ cornerRadius : CGFloat , _ type: buttonType){
        switch type {
        case .login:
            setButtonRadius(self.btnLogin, cornerRadius)
        case .facebook:
            setButtonRadius(self.btnFb, cornerRadius)
        case .google:
            setButtonRadius(self.btnGoogle, cornerRadius)
        default:
            print("not applicable")
        }
        
    }
    func setButtonRadius(_ button : UIButton, _ cornerRadius : CGFloat){
        button.layer.masksToBounds = false
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
    }
  //  Method cannot be declared public because its parameter uses an internal type
    @IBAction func didPressedButton(sender: UIButton) {
        print("\(sender)")
        switch sender {
        case self.btnForgotPass:
            delegate?.didPressedButton(button: sender, data: nil)
        case self.btnLogin:
//            if(loginHandler == nil) {
//                print("No loginHandler defined")
//                return
//            }
//            loginHandler!(tfUserName.text!, tfPassword.text!)
            let dataGathered = ["email": tfUserName.text!, "pass":tfPassword.text!]
            delegate?.didPressedButton(button: sender, data: dataGathered)

        case self.btnFb:
            delegate?.didPressedButton(button: sender, data: nil)
        case self.btnGoogle:
            delegate?.didPressedButton(button: sender, data: nil)
        case self.btnSignUp:
            delegate?.didPressedButton(button: sender, data: nil)
            default:
            print("not available")
        }
    }
    
    @IBAction func didpressedSignup(_ sender: Any) {
        print("sign pressed")
    }
    
}


