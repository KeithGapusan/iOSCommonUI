//
//  SubmitBtnTableViewCell.swift
//  CustomForm
//
//  Created by Keith Gapusan on 11/10/2017.
//  Copyright © 2017 Keith Gapusan. All rights reserved.
//

import UIKit

class SubmitBtnTableViewCell: UITableViewCell {

    @IBOutlet weak var btnSubmit: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        var tempVal = 0
//        while tempVal != 2{
//            tempVal += 1
//        }
    }
    
    public func getNib() -> UINib{
        return UINib(nibName:xibName.SubmitBtnTableViewCell, bundle: Bundle().getBundle(swiftClass: SubmitBtnTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.SubmitBtnTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
}
