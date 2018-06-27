//
//  LoaderCustomTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 24/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class LoaderCustomTableViewCell: UITableViewCell {

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.LoaderCustomTableViewCell, bundle: Bundle().getBundle(swiftClass: LoaderCustomTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.LoaderCustomTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
}
