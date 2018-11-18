//
//  PickerButtonTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 14/10/2017.
//  Copyright © 2017 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class PickerButtonTableViewCell: UITableViewCell {

    @IBOutlet public weak var lblTitle: UILabel!
    @IBOutlet public weak var lblPicker: UILabel!
    @IBOutlet public weak var btnPicker: UIButton!
    @IBOutlet public weak var viewHolder: UIButton!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    public func getNib() -> UINib{
        return UINib(nibName:xibName.PickerButtonTableViewCell, bundle: Bundle().getBundle(swiftClass: PickerButtonTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.PickerButtonTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
