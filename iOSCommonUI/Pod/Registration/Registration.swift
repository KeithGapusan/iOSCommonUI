//
//  Registration.swift
//  iOSCommonUI
//
//  Created by Keith Randell Gapusan on 26/11/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class Registration: UIView {

    @IBOutlet public weak var imgProfile: UIImageView!
    @IBOutlet public weak var lbTitle: UILabel!

        @IBOutlet public weak var tfFirstName: UITextField!
        @IBOutlet public weak var tfLastName: UITextField!
        @IBOutlet public weak var tfEmail: UITextField!
        @IBOutlet public weak var tfPassword: UITextField!
        @IBOutlet public weak var tfConfirmPassword: UITextField!

        @IBOutlet public weak var btnDone: UIButton!
        @IBOutlet public weak var btnBack: UIButton!
     @IBOutlet public weak var tfRF: UITextField!
    @IBOutlet public weak var viewHolderRF: UIView!
    
    @IBOutlet public var view: UIView!
    public required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        let bundleIdentifier = Bundle(for: Registration.self)
        UINib(nibName: "Registration", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
    }
}
