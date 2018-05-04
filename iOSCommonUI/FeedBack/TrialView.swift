//
//  TrialView.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 17/04/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class TrialView: UIView {

    @IBOutlet public weak var btnName: UIButton!
    
    @IBOutlet public weak var labelTriel: UILabel!
    @IBOutlet var view: UIView!
    
    public required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
    }
    
    @IBAction func didPressedButton(_ sender: Any) {
        self.labelTriel.text = "text pressed"
    }
    public func instanceFromNib() -> UIView {
        let bundleIdentifier = Bundle(for: TrialView.self)
        print("CustomView instance  == TrialView")
        print("bundle ID == \(bundleIdentifier)")
        return UINib(nibName: "TrialView", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        print("Setting up == TrialView")
        print(frame)
        xibSetup()
    }
    func xibSetup() {
        view = self.instanceFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
}
