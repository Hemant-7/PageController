//
//  CellFoundMatchesVC.swift
//  PageController
//
//  Created by Brain Tech on 20/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class CellFoundMatchesVC: UITableViewCell {

    @IBOutlet var lblSrlNumber: UILabel!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var btnDelete: UIButton!
    var btnDeleteClick : (() -> ()) = {}
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnDelete(_ sender: Any) {
        btnDeleteClick()
    }
}
