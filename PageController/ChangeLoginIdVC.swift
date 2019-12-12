//
//  ChangeLoginIdVC.swift
//  PageController
//
//  Created by mac on 12/11/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ChangeLoginIdVC: UIViewController {

    @IBOutlet var viewNavigation: UIView!
    @IBOutlet var btnBack: UIButton!
    
    @IBOutlet var txtCurrentLoginId: UITextField!
    @IBOutlet var viewCurrentLoginId: UIView!
    @IBOutlet var lblCurrentLoginId: UILabel!
    
    @IBOutlet var txtNewLoginId: UITextField!
    @IBOutlet var viewNewLoginId: UIView!
    @IBOutlet var lblNewLoginId: UILabel!
    
    
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var viewPassword: UIView!
    @IBOutlet var lblPassword: UILabel!
    @IBOutlet var viewShowPassword: UIView!
    @IBOutlet var btnShowPassword: UIButton!
    
    @IBOutlet var btnCancel: UIButton!
    @IBOutlet var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtCurrentLoginId.layer.borderWidth = 1
        txtCurrentLoginId.layer.borderColor = UIColor.gray.cgColor
        txtCurrentLoginId.layer.cornerRadius = 2
            
        txtNewLoginId.layer.borderWidth = 1
        txtNewLoginId.layer.borderColor = UIColor.gray.cgColor
        txtNewLoginId.layer.cornerRadius = 2

        
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
    @IBAction func btnCancel(_ sender: Any) {
        
    }
    @IBAction func btnSubmit(_ sender: Any) {
        
    }
}
