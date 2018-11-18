//
//  WalkThroughViewController.swift
//  StraightArrow
//
//  Created by Belinda Natividad on 09/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController {


    @IBOutlet var heightImage: NSLayoutConstraint!
    @IBOutlet var topImageConstraints: NSLayoutConstraint!
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var labelDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let bounds = UIScreen.main.bounds
//        let height = bounds.size.height
//
//        if height <= 568 {
//            heightImage.constant = 195
//            topImageConstraints.constant = 15
//        } else {
//            heightImage.constant = 220
//            topImageConstraints.constant = 50
//        }
        
    }

    func setDesription(text: String){
        labelDescription.text = text
    }

    func setImageLogo(imageName: String){
        self.imageLogo.image = UIImage(named: imageName)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressedBtn(_ sender: Any) {
        self.toMainViewController()
    }
    func toMainViewController(){
        
//        if let vc = UIStoryboard(name: storyBoardName.main , bundle: nil).instantiateViewController(withIdentifier: storyBoardViewIdentifier.root) as? MenuControllerViewController
//        {
//
//            present(vc, animated: true, completion: nil)
//        }
//        if let vc = UIStoryboard(name: storyBoardName.mainVersion2 , bundle: nil).instantiateViewController(withIdentifier: "root") as? MainTabBarViewController
//        {
//
//            present(vc, animated: true, completion: nil)
//        }

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
