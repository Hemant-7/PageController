//
//  SwapIntroVC.swift
//  PageController
//
//  Created by Brain Tech on 03/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class SwapIntroVC: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewFirstPoint: UIView!
    @IBOutlet weak var viewSecondPont: UIView!
    @IBOutlet weak var viewThirdPoint: UIView!
    @IBOutlet weak var lblFirstPoint: UILabel!
    @IBOutlet weak var lblSecondPoint: UILabel!
    @IBOutlet weak var lblThirdPoint: UILabel!
    @IBOutlet weak var lblFirstDot: UILabel!
    @IBOutlet weak var lblSecondDot: UILabel!
    @IBOutlet weak var lblThirdDot: UILabel!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    let arrOfFirstSlidePoint = [("Replace the current card for a different one "),
    ("Replace it for all recipient or a particular recipient"),
    ("No actions required from the card recipient")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFirstDot.layer.cornerRadius = lblFirstDot.frame.width/2
        lblFirstDot.layer.masksToBounds = true
        lblSecondDot.layer.cornerRadius = lblSecondDot.frame.width/2
        lblSecondDot.layer.masksToBounds = true
        lblThirdDot.layer.cornerRadius = lblThirdDot.frame.width/2
        lblThirdDot.layer.masksToBounds = true
        
        lblTitle.text = "Swap Card"
        imgView.image = UIImage(named: "ic_cardswap_bg")
        lblFirstPoint.text = arrOfFirstSlidePoint[0]
        lblSecondPoint.text = arrOfFirstSlidePoint[1]
        lblThirdPoint.text = arrOfFirstSlidePoint[2]
        
        btnCancel.layer.cornerRadius = 2
        btnCancel.layer.shadowColor = UIColor.gray.cgColor
        btnCancel.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnCancel.layer.shadowOpacity = 1.0
              
        btnContinue.layer.cornerRadius = 2
        btnContinue.layer.shadowColor = UIColor.gray.cgColor
        btnContinue.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnContinue.layer.shadowOpacity = 1.0
    }
    
    @IBAction func btnCancel(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnContinue(_ sender: UIButton) {
        
    }
}
