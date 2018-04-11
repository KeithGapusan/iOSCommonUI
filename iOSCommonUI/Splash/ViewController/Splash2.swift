//
//  Splash2.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 01/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class Splash2: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setImgView(image: UIImage){
        self.imgView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
