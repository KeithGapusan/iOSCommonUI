//
//  TextViewTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 14/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class TextViewTableViewCell: UITableViewCell {
    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var lblTitle: UILabel!

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }


    public func getNib() -> UINib{
        return UINib(nibName:xibName.TextViewTableViewCell, bundle: Bundle().getBundle(swiftClass: TextViewTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TextViewTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
    
}
