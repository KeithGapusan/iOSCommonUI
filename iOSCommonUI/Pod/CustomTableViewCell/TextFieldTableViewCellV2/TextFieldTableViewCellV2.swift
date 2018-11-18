//
//  TextFieldTableViewCellV2.swift
//  StraightArrow
//
//  Created by Keith Randell Gapusan on 15/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class TextFieldTableViewCellV2: UITableViewCell {
    @IBOutlet weak var tfCell: UITextField!
    
    @IBOutlet weak var labelCell: UILabel!

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //self.tfCell.setLeftPaddingPoints(10)
       // self.tfCell.setRightPaddingPoints(10)
       // self.tfCell.setTextFieldBorderColor(customColor.borderGray)
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
