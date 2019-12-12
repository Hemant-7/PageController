//
//  DropDownVC.swift
//  PageController
//
//  Created by mac on 12/11/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class DropDownVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet var btnDropDown: UIButton!
    @IBOutlet var tblView: UITableView!
    @IBOutlet var viewNavigation: UIView!
    
//    var arrOfNameList = [DropDown]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.delegate = self
        tblView.dataSource = self
        
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        btnDropDown.layer.borderWidth = 1
        btnDropDown.layer.borderColor = UIColor.black.cgColor
        btnDropDown.layer.cornerRadius = 2
        btnDropDown.layer.shadowColor = UIColor.gray.cgColor
        btnDropDown.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnDropDown.layer.shadowOpacity = 1.0
        
        tblView.isHidden = true
        
        tblView.register(UINib.init(nibName: "CellDropDownVC", bundle: nil), forCellReuseIdentifier: "CellDropDownVC")
    }

    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnDropDown(_ sender: Any) {
        if tblView.isHidden {
            tblView.isHidden = false
        } else {
            tblView.isHidden = true
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "CellDropDownVC") as! CellDropDownVC
        cell.viewContainer.layer.borderWidth =  1
        cell.viewContainer.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
