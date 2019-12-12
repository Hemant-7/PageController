//
//  FeedbackVC.swift
//  PageController
//
//  Created by mac on 12/12/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class FeedbackVC: UIViewController {

    @IBOutlet var viewNavigation: UIView!
    @IBOutlet var btnBack: UIButton!
    @IBOutlet var btnStarOne: UIButton!
    @IBOutlet var btnStarTwo: UIButton!
    @IBOutlet var btnStarThree: UIButton!
    @IBOutlet var btnStarFour: UIButton!
    @IBOutlet var btnStarFive: UIButton!
    @IBOutlet var txtFeedback: UITextField!
    @IBOutlet var btnSubmit: UIButton!
    @IBOutlet var viewRateUs: UIView!
    @IBOutlet var ImgAppleStore: UIImageView!
    @IBOutlet var btnRateUs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        txtFeedback.layer.borderColor = UIColor.gray.cgColor
        txtFeedback.layer.cornerRadius = 2
        txtFeedback.layer.borderWidth = 1
        
        btnSubmit.layer.cornerRadius = 2
        btnSubmit.layer.shadowColor = UIColor.gray.cgColor
        btnSubmit.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnSubmit.layer.shadowOpacity = 1.0
        
        
        btnStarOne.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnStarOne(_ sender: UIButton) {
        btnStarOne.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
    }
    
    @IBAction func btnStarTwo(_ sender: UIButton) {
        btnStarOne.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
    }

    @IBAction func btnStarThree(_ sender: UIButton) {
        btnStarOne.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
    }
    
    @IBAction func btnStarFour(_ sender: UIButton) {
        btnStarOne.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_unselected"), for: UIControl.State.normal)
    }
    
    @IBAction func btnStarFive(_ sender: UIButton) {
        btnStarOne.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarTwo.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarThree.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarFour.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
        btnStarFive.setImage(UIImage(named: "star_selected"), for: UIControl.State.normal)
    }
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        
    }
    
    @IBAction func btnRateUs(_ sender: UIButton) {
        if let url = URL(string: "http://www.google.com"){
            UIApplication.shared.open(url)
        }
    }
}
