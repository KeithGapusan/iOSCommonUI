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
            let data = ["first_name":tfName.text! , "last_name":tfLastName.text!, "email":tfEmail.text!, "password": tfPassword.text!]
            delegate.didPressedButton(sender: data)
        }else if btn == btnAlreadyMember{
            
        }else{
            print("not applicable")
        }
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
        // tableView.register(UINib(nibName:xibName.headerSeparatorCell, bundle: nil), forCellReuseIdentifier: cellIdentifier.header_separator)
        let bundleIdentifier = Bundle(for: RegistrationV2.self)
        print("bundle ID == \(bundleIdentifier)")
        
        return UINib(nibName: xibName.registrationV2, bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    func xibSetup() {
        view = self.instanceFromNib() as! RegistrationV2
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }
}
