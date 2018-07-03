//
//  ImageViewTableViewCell.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 29/05/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class ImageViewTableViewCell: UITableViewCell {
    @IBOutlet weak var labelPlace: UILabel!
    @IBOutlet weak var labelStart: UILabel!
    
    @IBOutlet weak var gradientView: GradientView!
    @IBOutlet weak var lableTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    public func getNib() -> UINib{
        return UINib(nibName:xibName.ImageViewTableViewCell, bundle: Bundle().getBundle(swiftClass: ImageViewTableViewCell.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.ImageViewTableViewCell
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
