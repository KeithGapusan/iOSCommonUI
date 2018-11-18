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

public class ForgotPasswordView: UIView {
    
    @IBOutlet public weak var tfEmail: UITextField!
    
    @IBOutlet var view: ForgotPasswordView!
    
    public var delegate : ForgotPasswordViewDelegate! = nil
    @IBAction func didPressedButton(_ sender: Any) {
        let data = ["email": tfEmail.text!] as [String:Any]
        delegate.didPressedForgotPasswordButton(sender: data)
    
        
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
        let bundleIdentifier = Bundle(for: ForgotPasswordView.self)
        print("bundle ID == \(bundleIdentifier)")
        
        return UINib(nibName: xibName.forgotPassword, bundle: Bundle().getBundle(swiftClass: ForgotPasswordView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    func xibSetup() {
        view = self.instanceFromNib() as! ForgotPasswordView
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }
    
}
