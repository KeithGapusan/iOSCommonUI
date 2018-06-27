//
//  HeaderTableViewCell.swift
//  CustomForm
//
//  Created by Keith Gapusan on 09/10/2017.
//  Copyright © 2017 Keith Gapusan. All rights reserved.
//

import UIKit

public class HeaderTableViewCell: UITableViewCell {

    @IBOutlet public weak var labelTitle: UILabel!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   public func getNib() -> UINib{
        return UINib(nibName:xibName.HeaderTableViewCell, bundle: Bundle().getBundle(swiftClass: HeaderTableViewCell.self))
    }
   public func getCellId() -> String{
        return cellIdentifier.HeaderTableViewCell
    }
    public func registerNib(tableView:UITableView){
       tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
}
