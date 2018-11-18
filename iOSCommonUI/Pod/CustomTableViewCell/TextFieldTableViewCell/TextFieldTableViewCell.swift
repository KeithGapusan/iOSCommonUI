//
//  TextFieldTableViewCell.swift
//  CustomForm
//
//  Created by Keith Gapusan on 09/10/2017.
//  Copyright © 2017 Keith Gapusan. All rights reserved.
//

import UIKit

public class TextFieldTableViewCell: UITableViewCell {
    @IBOutlet weak var tfCell: UITextField!
    @IBOutlet weak var btnEdit: UIButton!

    @IBOutlet weak var labelCell: UILabel!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.tfCell.delegate = self as? UITextFieldDelegate
        self.tfCell.setLeftPaddingPoints(15)
        self.tfCell.setRightPaddingPoints(15)
        self.tfCell.setTextFieldBorderColor(UIColor.gray)
        
    }
    @IBAction func didPressedPrimaryKey(_ sender: Any) {
        print("primaryKey pressed : \(sender)")
    }

 
    public func getNib() -> UINib{
        return UINib(nibName:xibName.TextFieldTableViewCell, bundle: Bundle().getBundle(swiftClass: TextFieldTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TextFieldTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
    
}
