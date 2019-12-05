//
//  Slide.swift
//  PageController
//
//  Created by mac on 9/12/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class Slide: UIView {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    
    @IBOutlet var lblFirstPoint: UILabel!
    @IBOutlet var lblSecondPoint: UILabel!
    @IBOutlet var lblThirdPoint: UILabel!
    @IBOutlet var lblForthPoint: UILabel!
    
    @IBOutlet var viewFirst: UIView!
    @IBOutlet var viewSecond: UIView!
    @IBOutlet var viewthird: UIView!
    @IBOutlet var viewFourth: UIView!
    
    @IBOutlet var lblDotOne: UILabel!
    @IBOutlet var lblDotThree: UILabel!
    @IBOutlet var lblDotFour: UILabel!
    @IBOutlet var lblDotTwo: UILabel!
    
    @IBOutlet var stackLblContainer: UIStackView!
    override func draw(_ rect: CGRect) {
        
//        print(stackLblContainer.frame.height)
        sizeToFit()
        layoutIfNeeded()
        
        lblDotOne.layer.cornerRadius = lblDotOne.frame.width/2
        lblDotOne.layer.masksToBounds = true
        lblDotTwo.layer.cornerRadius = lblDotOne.frame.width/2
        lblDotTwo.layer.masksToBounds = true
        lblDotThree.layer.cornerRadius = lblDotOne.frame.width/2
        lblDotThree.layer.masksToBounds = true
        lblDotFour.layer.cornerRadius = lblDotOne.frame.width/2
        lblDotFour.layer.masksToBounds = true
        
    }
}

