//
//  TextFieldTableViewCellV2.swift
//  StraightArrow
//
//  Created by Keith Randell Gapusan on 15/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class TextFieldTableViewCellV2: UITableViewCell {
    @IBOutlet weak var tfCell: UITextField!
    
    @IBOutlet weak var labelCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //self.tfCell.setLeftPaddingPoints(10)
       // self.tfCell.setRightPaddingPoints(10)
       // self.tfCell.setTextFieldBorderColor(customColor.borderGray)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.TextFieldTableViewCellV2, bundle: Bundle().getBundle(swiftClass: TextFieldTableViewCellV2.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TextFieldTableViewCellV2
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
