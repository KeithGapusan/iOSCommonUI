//
//  ImageViewTitleTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 21/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

class ImageViewTitleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
