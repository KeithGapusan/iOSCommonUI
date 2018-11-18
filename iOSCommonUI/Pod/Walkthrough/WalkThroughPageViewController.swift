//
//  WalkThroughPageViewController. swift
//  StraightArrow
//
//  Created by Belinda Natividad on 09/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public protocol WalkThroughPageViewControllerDelegate {
    func didUpdatePageView(sender: Int)
    func getNumberOfViews(sender: Int)
}
class WalkThroughPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource  {

    let   pageControl: UIPageControl = {
    let pageController = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
        pageController.currentPage = 0
//        pageController.tintColor = customColor.darkBlue
//        pageController.pageIndicatorTintColor = UIColor.gray
//        pageController.currentPageIndicatorTintColor = customColor.violet
       return pageController
     }()

    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1"),
                self.newVc(viewController: "wtVC1")]
    }()
    
    
    var imageList =  [String]()
    var descList  =  [String]()
    
    var pageDelegate : WalkThroughPageViewControllerDelegate!
    var currentViewIndex : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
       
    }
   
    override func viewDidAppear(_ animated: Bool) {
        setCurrentView(index: currentViewIndex)
        configurePageControl()
    }
    
    
    func setCurrentView(index : Int){
        print("set curr  = \(index)")
        print("set curr  = \(orderedViewControllers)")
        let vc = orderedViewControllers[index] as! WalkThroughViewController
       
        setViewControllers([vc],
                           direction: .forward,
                           animated: true,
                           completion:{(value:Bool) in
                            print("completed \(value)")
                            if value {
                                 self.pageDelegate.didUpdatePageView(sender: index)
                                 vc.setDesription(text: self.descList[index])
                                vc.setImageLogo(imageName: self.imageList[index])
                            }
                           
        })
        
    }
    
    func setCurrentIndex(index : Int){
        self.currentViewIndex = index
      
    }
    
    
    func setImageList(images:[String]){
        self.imageList = images
    }
    func setDescList(descriptions:[String]){
        self.descList = descriptions
    }
    func nextPage(index:Int){
   //     let view = self.orderedViewControllers[index]
        self.setViewControllers(self.orderedViewControllers,
                                direction: .forward,
                                animated: true,
                                completion: nil)
    }
    func getCurrentView() -> Int{
        return self.pageControl.currentPage
    }
    func setViewController(views : [UIViewController]){
  
        self.orderedViewControllers = views
    }
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        self.pageControl.numberOfPages = orderedViewControllers.count
        self.pageControl.currentPage = self.currentViewIndex
        
        self.view.addSubview(pageControl)
    }
    
    func newVc(viewController: String) -> UIViewController {
        let vc = UIStoryboard(name: "Walkthrough", bundle: nil).instantiateViewController(withIdentifier: viewController) as! WalkThroughViewController
        
        return vc
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        let vc = pageContentViewController as! WalkThroughViewController
        vc.setImageLogo(imageName: self.imageList[orderedViewControllers.index(of: pageContentViewController)!])
        vc.setDesription(text: descList[orderedViewControllers.index(of: pageContentViewController)!])
        self.pageControl.currentPage = orderedViewControllers.index(of: pageContentViewController)!
        self.pageDelegate.didUpdatePageView(sender: self.pageControl.currentPage)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        // User is on the first view controller and swiped left to loop to
        // the last view controller.
        guard previousIndex >= 0 else {
            return orderedViewControllers.last
            // Uncommment the line below, remove the line above if you don't want the page control to loop.
            // return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        // User is on the last view controller and swiped right to loop to
        // the first view controller.
        guard orderedViewControllersCount != nextIndex else {
            return orderedViewControllers.first
            // Uncommment the line below, remove the line above if you don't want the page control to loop.
            // return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }

}
