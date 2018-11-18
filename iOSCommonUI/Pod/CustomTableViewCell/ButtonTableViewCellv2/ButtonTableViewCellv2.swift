//
//  ButtonTableViewCellv2.swift
//  Inmarsat
//
//  Created by Keith Gapusan on 30/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class ButtonTableViewCellv2: UITableViewCell {

    @IBOutlet weak var btnObject: UIButton!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.ButtonTableViewCellv2, bundle: Bundle().getBundle(swiftClass: ButtonTableViewCellv2.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.ButtonTableViewCellv2
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
