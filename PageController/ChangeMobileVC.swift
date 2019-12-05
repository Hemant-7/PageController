//
//  ChangeMobileVC.swift
//  PageController
//
//  Created by mac on 12/4/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ChangeMobileVC: UIViewController {

    @IBOutlet var viewNavigation: UIView!
    @IBOutlet var btnBack: UIButton!
    
    @IBOutlet var txtSelectCurrentCountryCode: UITextField!
    @IBOutlet var txtCurrentMobile: UITextField!
    @IBOutlet var txtSelectCountryCode: UITextField!
    @IBOutlet var txtNewMobile: UITextField!
    @IBOutlet var txtLoginId: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnShow: UIButton!
    @IBOutlet var btnCancel: UIButton!
    @IBOutlet var btnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        txtSelectCurrentCountryCode.layer.borderWidth = 1
        txtSelectCurrentCountryCode.layer.borderColor = UIColor.gray.cgColor
        txtSelectCurrentCountryCode.layer.cornerRadius = 2
        
        txtCurrentMobile.layer.borderWidth = 1
        txtCurrentMobile.layer.borderColor = UIColor.gray.cgColor
        txtCurrentMobile.layer.cornerRadius = 2
        
        txtSelectCountryCode.layer.borderWidth = 1
        txtSelectCountryCode.layer.borderColor = UIColor.gray.cgColor
        txtSelectCountryCode.layer.cornerRadius = 2
        
        txtNewMobile.layer.borderWidth = 1
        txtNewMobile.layer.borderColor = UIColor.gray.cgColor
        txtNewMobile.layer.cornerRadius = 2
        
        txtLoginId.layer.borderWidth = 1
        txtLoginId.layer.borderColor = UIColor.gray.cgColor
        txtLoginId.layer.cornerRadius = 2
        
        txtPassword.layer.borderWidth = 1
        txtPassword.layer.borderColor = UIColor.gray.cgColor
        txtPassword.layer.cornerRadius = 2
        
        btnCancel.layer.cornerRadius = 2
        btnCancel.layer.shadowColor = UIColor.gray.cgColor
        btnCancel.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnCancel.layer.shadowOpacity = 1.0
        
        btnSubmit.layer.cornerRadius = 2
        btnSubmit.layer.shadowColor = UIColor.gray.cgColor
        btnSubmit.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnSubmit.layer.shadowOpacity = 1.0
       
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnCancelClick(_ sender: Any) {
        
    }
    @IBAction func btnSubmitClick(_ sender: Any) {
        
    }
}
