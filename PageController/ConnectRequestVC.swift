//
//  ConnectRequestVC.swift
//  PageController
//
//  Created by mac on 12/12/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ConnectRequestVC: UIViewController {

    @IBOutlet var viewNavigation: UIView!
    
    @IBOutlet var btnBAck: UIButton!
    
    @IBOutlet var viewMobile: UIView!
    @IBOutlet var btnMobile: UIButton!
    @IBOutlet var imgMobileCheck: UIImageView!
    @IBOutlet var viewEmail: UIView!
    
    @IBOutlet var btnEmail: UIButton!
    @IBOutlet var imgEmailCheck: UIImageView!
    
    @IBOutlet var viewCountryCode: UIView!
    @IBOutlet var txtCountryCode: UITextField!
    @IBOutlet var viewTxtMobile: UIView!
    @IBOutlet var txtMobile: UITextField!
    
    @IBOutlet var viewTxtEmail: UIView!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var lblEmail: UILabel!
    
    @IBOutlet var viewClaimCode: UIView!
    @IBOutlet var txtClaimCode: UITextField!
    @IBOutlet var lblClaimCode: UILabel!
    
    @IBOutlet var btnCancel: UIButton!
    @IBOutlet var btnOk: UIButton!
    
    @IBOutlet var stackViewMobile: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        txtCountryCode.layer.borderColor = UIColor.gray.cgColor
        txtCountryCode.layer.cornerRadius = 2
        txtCountryCode.layer.borderWidth = 1
        
        txtMobile.layer.borderColor = UIColor.gray.cgColor
        txtMobile.layer.cornerRadius = 2
        txtMobile.layer.borderWidth = 1
        
        btnCancel.layer.cornerRadius = 2
        btnCancel.layer.shadowColor = UIColor.gray.cgColor
        btnCancel.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnCancel.layer.shadowOpacity = 1.0
        
        btnOk.layer.cornerRadius = 2
        btnOk.layer.shadowColor = UIColor.gray.cgColor
        btnOk.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnOk.layer.shadowOpacity = 1.0
        
        imgEmailCheck.image = UIImage(named: "blue_check")
        stackViewMobile.isHidden = true
    }
    
    @IBAction func btnBAck(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnMobile(_ sender: Any) {
        imgMobileCheck.image = UIImage(named: "blue_check")
        imgEmailCheck.image = UIImage(named: "")
        viewTxtEmail.isHidden = true
        stackViewMobile.isHidden = false
    }
    
    @IBAction func btnEmail(_ sender: Any) {
        imgEmailCheck.image = UIImage(named: "blue_check")
        imgMobileCheck.image = UIImage(named: "")
        viewTxtEmail.isHidden = false
        stackViewMobile.isHidden = true
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        
    }
    @IBAction func btnOk(_ sender: Any) {
        
    }
}
