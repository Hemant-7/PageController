//
//  ChangePasswordVC.swift
//  PageController
//
//  Created by mac on 12/11/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ChangePasswordVC: UIViewController {
    
    
    @IBOutlet var viewNavigation: UIView!
    @IBOutlet var btnBack: UIButton!
    
    @IBOutlet var txtCurrentPassword: UITextField!
    @IBOutlet var viewCurrentPass: UIView!
    @IBOutlet var lblCurrentPassword: UILabel!
    @IBOutlet var viewBtnShowCurrentPass: UIView!
    @IBOutlet var btnShowCurrentPasswor: UIButton!
    
    @IBOutlet var txtNewPassword: UITextField!
    @IBOutlet var viewNewPassword: UIView!
    @IBOutlet var lblNewPassword: UILabel!
    @IBOutlet var viewBtnShowNewPass: UIView!
    @IBOutlet var btnShowNewPassword: UIButton!
    
    @IBOutlet var txtConfirmNewPassword: UITextField!
    @IBOutlet var viewCnfNewPass: UIView!
    @IBOutlet var lblCnfPassword: UILabel!
    @IBOutlet var viewBtnCnfNewPass: UIView!
    @IBOutlet var btnShowCnfNewPassword: UIButton!
    
    @IBOutlet var txtLoginId: UITextField!
    @IBOutlet var viewLoginId: UIView!
    @IBOutlet var lblLoginId: UILabel!
    
    @IBOutlet var btnCancel: UIButton!
    @IBOutlet var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        txtCurrentPassword.layer.borderWidth = 1
        txtCurrentPassword.layer.borderColor = UIColor.gray.cgColor
        txtCurrentPassword.layer.cornerRadius = 2
        
        txtNewPassword.layer.borderWidth = 1
        txtNewPassword.layer.borderColor = UIColor.gray.cgColor
        txtNewPassword.layer.cornerRadius = 2
        
        txtConfirmNewPassword.layer.borderWidth = 1
        txtConfirmNewPassword.layer.borderColor = UIColor.gray.cgColor
        txtConfirmNewPassword.layer.cornerRadius = 2
        
        txtLoginId.layer.borderWidth = 1
        txtLoginId.layer.borderColor = UIColor.gray.cgColor
        txtLoginId.layer.cornerRadius = 2
        
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
    
    @IBAction func btnCancel(_ sender: Any) {
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
    }
}
