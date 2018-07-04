//
//  TableViewCell+ImageView.swift
//  StraightArrow
//
//  Created by Keith Gapusan on 13/02/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import UIKit

public class TableViewCellImageView: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgViewCenter: UIImageView!
    
    @IBOutlet weak var gradientView: GradientView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet var imgTopSpacing: NSLayoutConstraint!
    @IBOutlet var imgBottomSpacing: NSLayoutConstraint!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

  
    public func getNib() -> UINib{
        return UINib(nibName:xibName.TableViewCellImageView, bundle: Bundle().getBundle(swiftClass: TableViewCellImageView.self))
    }
    public func getCellId() -> String{
        return cellIdentifier.TableViewCellImageView
    }
    public func registerNib(tableView:UITableView){
        tableView.register(getNib(), forCellReuseIdentifier: getCellId())
    }
}
