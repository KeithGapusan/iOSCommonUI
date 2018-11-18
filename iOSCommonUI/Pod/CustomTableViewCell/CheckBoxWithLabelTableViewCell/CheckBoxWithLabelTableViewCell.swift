//
//  CheckBoxWithLabelTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 14/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class CheckBoxWithLabelTableViewCell: UITableViewCell {

    @IBOutlet weak var viewSeparator: UIView!
    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.CheckBoxWithLabelTableViewCell, bundle: Bundle().getBundle(swiftClass: CheckBoxWithLabelTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.CheckBoxWithLabelTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
