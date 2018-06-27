//
//  TwoColumnContactTableViewCell.swift
//  StraightArrow
//
//  Created by Belinda Natividad on 21/03/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class TwoColumnContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
