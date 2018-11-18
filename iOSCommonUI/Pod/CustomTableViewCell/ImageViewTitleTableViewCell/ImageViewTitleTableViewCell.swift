//
//  ImageViewTitleTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 21/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class ImageViewTitleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }


    public func getNib() -> UINib{
        return UINib(nibName:xibName.ImageViewTitleTableViewCell, bundle: Bundle().getBundle(swiftClass: ImageViewTitleTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.ImageViewTitleTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
