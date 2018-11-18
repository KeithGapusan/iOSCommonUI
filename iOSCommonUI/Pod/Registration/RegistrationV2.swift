//
//  RegistrationV2.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 10/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit
public protocol RegistrationV2Delegate{
    func didPressedButton(sender: [String:Any])
}

public class RegistrationV2: UIView{

    @IBOutlet weak var btnPrivacyPolicy: UIButton!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnAlreadyMember: UIButton!
    @IBOutlet var view: RegistrationV2!
    public var delegate: RegistrationV2Delegate!
    @IBAction func didPressedButton(_ sender: Any) {
        let btn = sender as! UIButton
        if btn == btnLogin{
  
            let textFields = ["First name":tfName , "Last name":tfLastName, "Email":tfEmail, "Password": tfPassword, "Confirm password": tfConfirmPassword]
            let listOfEmptyTextFields = self.listOfEmptyTextField(textFields: textFields as! [String : UITextField])
            
            let data = ["type":0,"first_name":tfName.text! , "last_name":tfLastName.text!, "email":tfEmail.text!, "password": tfPassword.text!, "confirm_password": tfConfirmPassword.text!,  "empty_textfields": listOfEmptyTextFields] as [String : Any]
            
            
            
            delegate.didPressedButton(sender: data)
        }else if btn == btnAlreadyMember{
            let data = ["type":1,"first_name":tfName.text! , "last_name":tfLastName.text!, "email":tfEmail.text!, "password": tfPassword.text!] as [String : Any]
            delegate.didPressedButton(sender: data)
        }else if btn ==  btnPrivacyPolicy{
            let data = ["type":2,"first_name":tfName.text! , "last_name":tfLastName.text!, "email":tfEmail.text!, "password": tfPassword.text!, "confirm_password": tfConfirmPassword.text!] as [String : Any]
            delegate.didPressedButton(sender: data)
        }
        else{
            print("not applicable")
        }
    }
    public func isTextFieldEmpty(textField: UITextField) -> Bool{
        guard (textField.text?.count)! < 1  else {
            return false
        }
        return true
    }
    public func listOfEmptyTextField(textFields : [String:UITextField]) ->  [String:Any]{
        var result = [String:Any]()
        for textField in textFields{
            let isTextFieldEmpty = self.isTextFieldEmpty(textField: textField.value)
            
            if isTextFieldEmpty{
                result[textField.key] =  isTextFieldEmpty
            }
//            guard isTextFieldEmpty == false else {
//                return  result[textField.key] =  isTextFieldEmpty
//            }
          
         //   result.index(forKey: <#T##String#>)
        }
        return result
    }
    public func getBtnAlreadyMember() -> UIButton{
        return self.btnAlreadyMember
    }
    public func setBtnAlreadyMemberHidden(isHidden: Bool){
        self.btnAlreadyMember.isHidden = isHidden
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //  xibSetup()
        //uncomment this if you want to implement this view directly in your Interface Builder View
    }
    public func instanceFromNib() -> UIView {
      //  let podBundle = Bundle(path: Bundle(for: RegistrationV2.self).path(forResource: "iOSCommonUI", ofType: "bundle")!)
        return UINib(nibName: xibName.registrationV2, bundle: Bundle().getBundle(swiftClass: RegistrationV2.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    func xibSetup() {
        view = self.instanceFromNib() as! RegistrationV2
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }
}
