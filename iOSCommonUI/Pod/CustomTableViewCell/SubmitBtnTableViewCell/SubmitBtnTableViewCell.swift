//
//  SubmitBtnTableViewCell.swift
//  CustomForm
//
//  Created by Keith Gapusan on 11/10/2017.
//  Copyright © 2017 Keith Gapusan. All rights reserved.
//

import UIKit

public class SubmitBtnTableViewCell: UITableViewCell {

    @IBOutlet weak var btnSubmit: UIButton!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
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
