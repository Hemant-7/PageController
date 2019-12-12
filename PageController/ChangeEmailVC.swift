//
//  ChangeEmailVC.swift
//  PageController
//
//  Created by mac on 12/4/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ChangeEmailVC: UIViewController {
    
    @IBOutlet var viewNavigation: UIView!
    @IBOutlet var txtCurrentEmail: UITextField!
    @IBOutlet var txtNewEmail: UITextField!
    @IBOutlet var txtLoginId: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnCancel: UIButton!
    @IBOutlet var btnSubmit: UIButton!
    @IBOutlet var btnShowPassword: UIButton!
    @IBOutlet var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        txtCurrentEmail.layer.borderWidth = 1
        txtCurrentEmail.layer.borderColor = UIColor.gray.cgColor
        txtCurrentEmail.layer.cornerRadius = 2
        txtNewEmail.layer.borderWidth = 1
        txtNewEmail.layer.borderColor = UIColor.gray.cgColor
        txtNewEmail.layer.cornerRadius = 2
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
    
    @IBAction func btnBack(_ sender: Any) {
       self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnShowpasswordClick(_ sender: Any) {
    }
    
}
