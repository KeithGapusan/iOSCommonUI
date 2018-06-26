//
//  TableViewCell+ImageView.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 13/02/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class TableViewCell_ImageView: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgViewCenter: UIImageView!
    
    @IBOutlet weak var gradientView: GradientView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet var imgTopSpacing: NSLayoutConstraint!
    @IBOutlet var imgBottomSpacing: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
