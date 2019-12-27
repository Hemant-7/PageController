//
//  WebKitVC.swift
//  PageController
//
//  Created by Brain Tech on 03/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit
import WebKit

class WebKitVC: UIViewController, WKNavigationDelegate,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var viewNavigation: UIView!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.delegate = self
        tblView.dataSource = self
        
        viewNavigation.layer.cornerRadius = 2
        viewNavigation.layer.shadowColor = UIColor.gray.cgColor
        viewNavigation.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewNavigation.layer.shadowOpacity = 1.0
        
        btnBack.layer.cornerRadius = 2
        btnBack.layer.shadowColor = UIColor.gray.cgColor
        btnBack.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnBack.layer.shadowOpacity = 1.0
        
    }
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tblView.dequeueReusableCell(withIdentifier: "CellWebKitContainer") as! CellWebKitContainer
        
        // add URL
        let url = URL(string: "https://ioscreator.com")!
        cell.webKitView.navigationDelegate = self
        cell.webKitView.load(URLRequest(url: url))
        cell.webKitView.scrollView.isScrollEnabled = false
        
        // add activityIndicator
        cell.activityIndicator.startAnimating()
        cell.activityIndicator.hidesWhenStopped = true
        
        cell.webKit = {
            cell.activityIndicator.stopAnimating()
            cell.webKitView.stopLoading()
        }
        
        return cell
    }
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
