//
//  FeedBackView.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 11/04/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public protocol FeedbackDelegate :class {
    func didUserPressSubmit(sender : [String:Any])
}

public class FeedBackView:UIView {

    @IBOutlet var view: FeedBackView!
    @IBOutlet weak var textField: UITextField?
    
    @IBOutlet  var textView: UITextView!
    @IBOutlet  var btnStar1: UIButton!
    @IBOutlet  var btnStar2: UIButton!
    @IBOutlet  var btnStar3: UIButton!
    @IBOutlet  var btnStar4: UIButton!
    @IBOutlet  var btnStar5: UIButton!
  
    @IBOutlet weak var lblFeedbackTitle: UILabel!
    @IBOutlet public weak var imgViewFeedbackLogo: UIImageView!
    var stars = [UIButton]()
    
    public weak var delegate : FeedbackDelegate!
    @IBOutlet public weak var btnSubmit: UIButton!
    
    public func setFeedbackTitle(title:String){
        self.lblFeedbackTitle.text = title
    }
    public func setFeedbackLogo(image: UIImage){
        self.imgViewFeedbackLogo.image = image
    }
    
    @IBAction func didPressedButton(_ sender: Any) {
        let btn = sender as! UIButton
        stars = [btnStar1,btnStar2,btnStar3, btnStar4, btnStar5]
        switch btn {
        case btnStar1:
            
         
            starSelected(num: 1)
        case btnStar2:
        
             starSelected(num: 2)
        case btnStar3:
     
             starSelected(num: 3)
        case btnStar4:
     
             starSelected(num: 4)
        case btnStar5:
       
             starSelected(num: 5)
        default:
        //    print("Selected = \(starSelected)")
            
            var rating = 0
            for btn in stars{
                if btn.isSelected {
                    rating += 1
                }else{
                    
                }
            }
            let data =  ["feedback": textView.text! , "email":textField!.text!, "rating":rating] as [String : Any]
            delegate.didUserPressSubmit(sender: data)
        
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
   
        xibSetup()
    }
    

    

    func starSelected(num : Int){
        self.stars = [btnStar1,btnStar2,btnStar3,btnStar4,btnStar5]
        var selected = num
        for config in stars{
            config.isSelected = false
        }
        while 0 < selected  {
            stars[selected - 1].isSelected = true
            selected -= 1
        }
    }
   
   
    

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
        //  xibSetup()
    }
    public func instanceFromNib() -> UIView {

//        let bundleIdentifier = Bundle(for: FeedBackView.self)
//        let bundle = Bundle(for: FeedBackView.classForCoder())
//        let podBundle = Bundle(path: Bundle(for: FeedBackView.self).path(forResource: "iOSCommonUI", ofType: "bundle")!)
        return UINib(nibName: xibName.feedback, bundle: Bundle().getBundle(swiftClass: FeedBackView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
    
    func xibSetup() {
        view = self.instanceFromNib() as! FeedBackView
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
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


