//
//  CellDropDownVC.swift
//  PageController
//
//  Created by mac on 12/11/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class CellDropDownVC: UITableViewCell {

    @IBOutlet var viewContainer: UIView!
    @IBOutlet var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
