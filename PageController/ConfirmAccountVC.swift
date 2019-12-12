//
//  ConfirmAccountVC.swift
//  PageController
//
//  Created by mac on 12/4/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ConfirmAccountVC: UIViewController,UITextFieldDelegate{

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet var txtEmailCode: UITextField!
    @IBOutlet var btnChangeEmail: UIButton!
    @IBOutlet var btnResendEmail: UIButton!
    @IBOutlet var txtMobileCode: UITextField!
    @IBOutlet var txtchangeMobile: UIButton!
    @IBOutlet var btnresendCode: UIButton!
    @IBOutlet var btnSubmit: UIButton!
    @IBOutlet var viewNavigation: UIView!
    
    @IBOutlet var viewChangeEmail: UIView!
    @IBOutlet var viewChangeMobile: UIView!
    @IBOutlet var viewSubmitButton: UIView!
//    var isSelected: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEmailCode.delegate = self
        txtMobileCode.delegate = self
        manageUI()
        
    }
    fileprivate func manageUI() {
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        txtEmailCode.layer.borderWidth = 1
        txtEmailCode.layer.cornerRadius = 2
        txtEmailCode.layer.borderColor = UIColor.gray.cgColor
        txtMobileCode.layer.borderWidth = 1
        txtMobileCode.layer.cornerRadius = 2
        txtMobileCode.layer.borderColor = UIColor.gray.cgColor
        btnSubmit.layer.cornerRadius = 2
        btnSubmit.layer.shadowColor = UIColor.gray.cgColor
        btnSubmit.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnSubmit.layer.shadowOpacity = 1.0
    }
    
    override func viewDidLayoutSubviews() {
       
    }
    
    @IBAction func btnChangeEmailClick(_ sender: Any) {
        let changeEmail = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChangeEmailVC") as! ChangeEmailVC
        self.navigationController?.pushViewController(changeEmail, animated: true)
    }
    
    @IBAction func btnResendEmailClick(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ActivityIndicatorVC") as! ActivityIndicatorVC
        self.navigationController?.pushViewController(vc
            , animated: true)
    }
    
    @IBAction func btnChangeMobileClick(_ sender: Any) {
        let changeMobileVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChangeMobileVC") as! ChangeMobileVC
        self.navigationController?.pushViewController(changeMobileVC, animated: true)
    }
    
    @IBAction func btnResendCodeClick(_ sender: Any) {
        let dropDownVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DropDownVC") as! DropDownVC
        self.navigationController?.pushViewController(dropDownVC, animated: true)
    }
    
    @IBAction func btnSubmitClick(_ sender: Any) {
        let vc  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyAccountVC") as! MyAccountVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {

        if textField == txtEmailCode {
            txtEmailCode.layer.borderColor = UIColor.blue.cgColor
            txtMobileCode.layer.borderColor = UIColor.gray.cgColor
        }else if textField == txtMobileCode {
            txtEmailCode.layer.borderColor = UIColor.gray.cgColor
            txtMobileCode.layer.borderColor = UIColor.blue.cgColor
        }
    }
    
    @IBAction func btnSkip(_ sender: Any) {
        let vc  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StackVC") as! StackVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
