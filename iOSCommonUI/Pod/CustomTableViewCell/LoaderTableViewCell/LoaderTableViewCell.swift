//
//  LoaderTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 24/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class LoaderTableViewCell: UITableViewCell {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    public func getNib() -> UINib{
        return UINib(nibName:xibName.LoaderTableViewCell , bundle: Bundle().getBundle(swiftClass: LoaderTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.LoaderTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
