//
//  HeaderWithSeparatorTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Randell Gapusan on 15/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class HeaderWithSeparatorTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewSeparator: UIView!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.HeaderWithSeparatorTableViewCell, bundle: Bundle().getBundle(swiftClass: HeaderWithSeparatorTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.HeaderWithSeparatorTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
