//
//  CheckBoxWithLabelTableViewCellv2.swift
//  Inmarsat
//
//  Created by Keith Gapusan on 26/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class CheckBoxWithLabelTableViewCellv2: UITableViewCell {

    
    @IBOutlet weak var checkBox1: UIButton!
    @IBOutlet weak var checkBox2: UIButton!
    @IBOutlet weak var lblTitle1: UILabel!
    @IBOutlet weak var lblTitle2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.CheckBoxWithLabelTableViewCellv2, bundle: Bundle().getBundle(swiftClass: CheckBoxWithLabelTableViewCellv2.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.CheckBoxWithLabelTableViewCellv2
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
