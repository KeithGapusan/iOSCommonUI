//
//  TwoColumnContactTableViewCell.swift
//  StraightArrow
//
//  Created by Belinda Natividad on 21/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class TwoColumnContactTableViewCell: UITableViewCell {

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    public func getNib() -> UINib{
        return UINib(nibName:xibName.TwoColumnContactTableViewCell, bundle: Bundle().getBundle(swiftClass: TwoColumnContactTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TwoColumnContactTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
