//
//  PickerButtonTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 14/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class PickerButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblPicker: UILabel!
    @IBOutlet weak var btnPicker: UIButton!
    @IBOutlet weak var viewHolder: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
