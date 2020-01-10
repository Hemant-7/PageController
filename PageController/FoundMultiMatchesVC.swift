//
//  FoundMultiMatchesVC.swift
//  PageController
//
//  Created by Brain Tech on 20/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class FoundMultiMatchesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tblView: UITableView!
    @IBOutlet var btnDone: UIButton!
    @IBOutlet var viewNavigation: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnDone.layer.cornerRadius = 2
        btnDone.layer.shadowColor = UIColor.gray.cgColor
        btnDone.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnDone.layer.shadowOpacity = 1.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "CellFoundMatchesVC") as! CellFoundMatchesVC
        cell.btnDeleteClick = {
            self.navigationController?.popViewController(animated: true)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    @IBAction func btnDone(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
