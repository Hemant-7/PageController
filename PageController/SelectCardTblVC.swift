//
//  SelectCardTblVC.swift
//  PageController
//
//  Created by Brain Tech on 05/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

protocol SelectCard {
    func getName(cardName:String)
}

class SelectCardTblVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    
    var objSelectCard: SelectCard?
    
    var  arrOfList = ["Rohit","Rahul","Virat","Dhoni","Jadeja","Rohit","Rahul","Virat","Dhoni","Jadeja","Rohit","Rahul","Virat","Dhoni","Jadeja"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        
        self.view.layer.shadowColor = UIColor.gray.cgColor
        self.view.layer.shadowOffset = CGSize(width: 1, height: 2)
        self.view.layer.shadowOpacity = 1.0
        
        tblView.isHidden = false
        
        tblView.register(UINib.init(nibName: "CellSelectCardVC", bundle: nil), forCellReuseIdentifier: "CellSelectCardVC")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return self.arrOfList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tblView.dequeueReusableCell(withIdentifier: "CellSelectCardVC") as! CellSelectCardVC
        let  cardName = arrOfList[indexPath.row]
        cell.lblCardName.text = cardName
        return cell
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let strName = arrOfList[indexPath.row]
        if let obj = objSelectCard {
            obj.getName(cardName: strName)
        }
    }
}
