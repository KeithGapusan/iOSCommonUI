//
//  LoginViewGoogleV2.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 08/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit
public protocol LoginGoogleDelegateV2{
    func didUserPressedLoginBtn(sender : [String:Any])
    func didPressedBtn(sender:UIButton)
}

public class LoginViewGoogleV2: UIView{

    @IBOutlet var view: LoginViewGoogleV2!
    @IBOutlet weak var tfEmailAddress: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignInGoogle: UIButton!
    @IBOutlet weak var btnForgotPass: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    public var delegate: LoginGoogleDelegateV2!

    @IBAction func didPressedSignInButton(_ sender: Any) {
        
    }
    
    @IBAction func didPressedBtn(_ sender: Any) {
        var data =  ["password": tfPassword.text! , "email":tfEmailAddress.text!] as [String : Any]
        let btnPressed = sender as! UIButton
        switch btnPressed {
        case btnLogin:
            data["type"] = 1
            delegate.didUserPressedLoginBtn(sender: data)
            break
        case btnSignInGoogle:
            data["type"] = 2
            delegate.didUserPressedLoginBtn(sender: data)
            break
        case btnForgotPass:
            data["type"] = 3
            delegate.didUserPressedLoginBtn(sender: data)
            break
        case btnRegister:
            data["type"] = 4
             delegate.didUserPressedLoginBtn(sender: data)
            break
        default:
            print("unrecognized button")
        }
      
    }
    override public init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //  xibSetup()

    }
    public func getTfPassword()-> UITextField{
        return self.tfPassword
    }
    public func getTfEmail() -> UITextField{
        return self.tfEmailAddress
    }
    
    public func setTfPassword(password : String){
        self.tfPassword.text =  password
    }
    public func setTfemail(email: String){
        self.tfEmailAddress.text = email
    }
    public func instanceFromNib() -> UIView {

        return UINib(nibName: xibName.loginWithGoogleV2, bundle: Bundle().getBundle(swiftClass: LoginViewGoogleV2.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    func xibSetup() {
        view = self.instanceFromNib() as! LoginViewGoogleV2
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }

}
