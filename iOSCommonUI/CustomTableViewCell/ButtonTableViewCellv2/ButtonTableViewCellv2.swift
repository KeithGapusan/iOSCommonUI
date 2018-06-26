//
//  ButtonTableViewCellv2.swift
//  Inmarsat
//
//  Created by Keith Gapusan on 30/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class ButtonTableViewCellv2: UITableViewCell {

    @IBOutlet weak var btnObject: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
