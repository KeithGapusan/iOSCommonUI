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

    @IBOutlet public weak var textField: UITextField!
    @IBOutlet public weak var textView: UITextView!
    @IBOutlet public weak var btnStar1: UIButton!
    @IBOutlet public weak var btnStar2: UIButton!
    @IBOutlet public weak var btnStar3: UIButton!
    @IBOutlet public weak var btnStar4: UIButton!
    @IBOutlet public weak var btnStar5: UIButton!
    var view: UIView!
    var stars = [UIButton]()
    
    var delegate : FeedbackDelegate?
    @IBOutlet public weak var btnSubmit: UIButton!
    @IBAction func didPressedButton(_ sender: Any) {
        let btn = sender as! UIButton
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
            print("Selected = ")
            let data =  ["feedback": textView.text! , "email":textField.text!]
            self.delegate?.didUserPressSubmit(sender: data)
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        //        setUpView()
        //        loadNib()
        xibSetup()
    }
    

    

    func starSelected(num : Int){
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
        super .init(coder: aDecoder)
       
//        let bundleIdentifier = Bundle(for: FeedBackView.self)
//        UINib(nibName: "FeedBackView", bundle: bundleIdentifier).instantiate(withOwner: self, options: nil)
//        addSubview(self.view)
//        self.view.frame = self.bounds
//        stars = [btnStar1,btnStar2,btnStar3, btnStar4, btnStar5]
        xibSetup()
    }
  func instanceFromNib() -> UIView {
        // tableView.register(UINib(nibName:xibName.headerSeparatorCell, bundle: nil), forCellReuseIdentifier: cellIdentifier.header_separator)
          let bundleIdentifier = Bundle(for: FeedBackView.self)
        return UINib(nibName: xibName.feedback, bundle: bundleIdentifier).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    public class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        //  let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
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
