//
//  WalkthroughHolderViewController.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 22/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit


class WalkthroughHolderViewController1: UIViewController , WalkThroughPageViewControllerDelegate {
    func didUpdatePageView(sender: Int) {
        print("current page \(sender)")
        self.pageControl.currentPage = sender
      //  self.lblTitle.text = titles[sender]
        if sender == 4 {
            self.btnNext.setTitle("Done", for: .normal)
        }else{
            self.btnNext.setTitle("Next", for: .normal)
        }
    }
    
    func getNumberOfViews(sender: Int) {
        print("number of views \(sender)")
        //self.pageControl.numberOfPages = sender
    }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var walkThroughCarousel: UIView!
    @IBOutlet weak var walk: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var btnNext: UIButton!
    
    var w : WalkThroughPageViewController!
    
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),]
    }()

    lazy var imageListName : [String] = {
        return ["newsandblogsIcon","portfolioIcon","contactIcon","eventsIcon","profileIcon"]
    }()
    lazy var descriptionList : [String] = {
        return ["Know what’s happening in StraightArrow and the industry.",
                "Check out some of our works that showcases our creativity driven by passion.",
                "Submit us your inquiries, learn how you can reach us, or simply take a virtual tour around our office.",
                "Check out the upcoming StraightArrow events, and confirm your attendance.",
                "Register and create your profile to have full access on details stored in this app."]
    }()
    lazy var titles : [String] = {
        return ["News and blogs","Portfolio","Contact Us","Events","Profile"]
    }()
    
 
    @IBAction func didPressedNextButton(_ sender: UIButton) {
    //     w = self.childViewControllers[0] as!  WalkThroughPageViewController
        let currPage = self.pageControl.currentPage
        let numOfItems = orderedViewControllers.count - 1
        if currPage < numOfItems
        {
            w.setCurrentView(index:currPage + 1)
        }else{
            //w.setCurrentView(index: 0)
            
        }
       

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        w = self.children[0] as!  WalkThroughPageViewController
        w.pageDelegate = self
        w.setCurrentIndex(index: 0)
        w.setViewController(views: orderedViewControllers)
        w.setImageList(images:  imageListName)
        w.setDescList(descriptions: descriptionList)
      
        self.pageControl.numberOfPages = orderedViewControllers.count
        
        print("current view = \(w.getCurrentView())")
        self.pageControl.currentPage = w.getCurrentView()

    }

    override func viewDidAppear(_ animated: Bool) {
      
    }
 
    @IBAction func didPressedSkipButton(_ sender: Any) {
        
//                if let vc = UIStoryboard(name: storyBoardName.mainVersion2 , bundle: nil).instantiateViewController(withIdentifier: "root") as? MainTabBarViewController
//                {
//        
//                    present(vc, animated: true, completion: nil)
//                }
    }
    func newVc(viewController: String) -> UIViewController {
        let vc = UIStoryboard(name: "Walkthrough", bundle: nil).instantiateViewController(withIdentifier: viewController) as! WalkThroughViewController
        
        return vc
    }
}
