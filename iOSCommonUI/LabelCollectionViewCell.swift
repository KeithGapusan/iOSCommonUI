//
//  LabelCollectionViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 23/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class LabelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        self.contentView.translatesAutoresizingMaskIntoConstraints = false
//        let screenWidth = UIScreen.main.bounds.size.width
//        widthConstraint.constant = screenWidth - (2 * 12)

        
    }

}
