//
//  LabelTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 16/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class LabelTableViewCell: UITableViewCell {

    @IBOutlet weak var buttomMargin: NSLayoutConstraint!
    @IBOutlet weak var topMargin: NSLayoutConstraint!
    @IBOutlet weak var label: UILabel!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }


    public func getNib() -> UINib{
        return UINib(nibName:xibName.LabelTableViewCell, bundle: Bundle().getBundle(swiftClass: LabelTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.LabelTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
