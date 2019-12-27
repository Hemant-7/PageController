//
//  CellSelectCardVC.swift
//  PageController
//
//  Created by Brain Tech on 05/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class CellSelectCardVC: UITableViewCell {
    @IBOutlet weak var lblCardName: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
