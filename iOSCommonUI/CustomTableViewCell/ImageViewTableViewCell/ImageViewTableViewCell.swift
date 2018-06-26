//
//  ImageViewTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 29/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class ImageViewTableViewCell: UITableViewCell {
    @IBOutlet weak var labelPlace: UILabel!
    @IBOutlet weak var labelStart: UILabel!
    
    @IBOutlet weak var gradientView: GradientView!
    @IBOutlet weak var lableTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
