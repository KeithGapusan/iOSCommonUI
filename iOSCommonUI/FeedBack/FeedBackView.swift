//
//  FeedBackView.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 11/04/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

protocol FeedbackDelegate {
    func didUserPressSubmit(sender : [String:Any])
}

public class FeedBackView:UIView {

    @IBOutlet var view: UIView!
    @IBOutlet public weak var textField: UITextField?
    
    @IBOutlet public var textView: UITextView!
    @IBOutlet public var btnStar1: UIButton!
    @IBOutlet public var btnStar2: UIButton!
    @IBOutlet public var btnStar3: UIButton!
    @IBOutlet public var btnStar4: UIButton!
    @IBOutlet public var btnStar5: UIButton!
  
    var stars = [UIButton]()
    
    var delegate : FeedbackDelegate?
    @IBOutlet public weak var btnSubmit: UIButton!
    @IBAction func didPressedButton(_ sender: Any) {
        let btn = sender as! UIButton
        stars = [btnStar1,btnStar2,btnStar3, btnStar4, btnStar5]
        switch btn {
        case btnStar1:
            
            print("star1")
            starSelected(num: 1)
        case btnStar2:
            print("star2")
             starSelected(num: 2)
        case btnStar3:
            print("star3")
             starSelected(num: 3)
        case btnStar4:
            print("star4")
             starSelected(num: 4)
        case btnStar5:
            print("star5")
             starSelected(num: 5)
        default:
            print("Selected = \(starSelected)")
            let data =  ["feedback": textView.text! , "email":textField?.text!]
            self.delegate?.didUserPressSubmit(sender: data ?? ["feedback":"","email":"", "rating":starSelected] as [String:Any])
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        print("Setting up == FeedbackView")
        xibSetup()
    }
    

    

    func starSelected(num : Int){
        self.stars = [btnStar1,btnStar2,btnStar3,btnStar4,btnStar5]
        var selected = num
        for config in stars{
            config.isSelected = false
        }
        while 0 < selected  {
            print("stars selected == \(selected)")
            stars[selected - 1].isSelected = true
            selected -= 1
        }
    }
   
   
    

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
        //  xibSetup()
    }
    public func instanceFromNib() -> UIView {
        // tableView.register(UINib(nibName:xibName.headerSeparatorCell, bundle: nil), forCellReuseIdentifier: cellIdentifier.header_separator)
        let bundleIdentifier = Bundle(for: FeedBackView.self)
        print("CustomView == FeedbackView")
        print("bundle ID == \(bundleIdentifier)")
        
        return UINib(nibName: xibName.feedback, bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)[0] as! UIView
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
  ////
    /*
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
    
  */
}
