//
//  ContactUsVC.swift
//  PageController
//
//  Created by mac on 12/12/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {

    @IBOutlet var viewNavigation: UIView!
    
    @IBOutlet var btnBack: UIButton!
    @IBOutlet var txtReason: UITextField!
    @IBOutlet var txtNotes: UITextField!
    @IBOutlet var btnSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        txtReason.layer.borderWidth = 1
        txtReason.layer.borderColor = UIColor.gray.cgColor
        txtReason.layer.cornerRadius = 2
        
        txtNotes.layer.borderWidth = 1
        txtNotes.layer.borderColor = UIColor.gray.cgColor
        txtNotes.layer.cornerRadius = 2
        
        btnSend.layer.cornerRadius = 2
        btnSend.layer.shadowColor = UIColor.gray.cgColor
        btnSend.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnSend.layer.shadowOpacity = 1.0
    }

    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnSend(_ sender: Any) {
        let foundVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FoundMultiMatchesVC") as! FoundMultiMatchesVC
        navigationController?.pushViewController(foundVC, animated: true)
    }
}
