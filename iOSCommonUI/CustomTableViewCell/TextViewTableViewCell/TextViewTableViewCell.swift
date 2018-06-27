//
//  TextViewTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 14/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class TextViewTableViewCell: UITableViewCell {
    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var lblTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.TextViewTableViewCell, bundle: Bundle().getBundle(swiftClass: TextViewTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TextViewTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
    
    
}
