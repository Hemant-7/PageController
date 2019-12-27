//
//  PickCardToSendVC.swift
//  PageController
//
//  Created by Brain Tech on 05/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit

class PickCardToSendVC: UIViewController, SelectCard {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var viewPickCard: UIView!
    @IBOutlet weak var lblPickCard: UILabel!
    @IBOutlet weak var viewSelectCard: UIView!
    @IBOutlet weak var imgViewDownArrow: UIImageView!
    @IBOutlet weak var btnSelectCard: UIButton!
    @IBOutlet weak var viewAllow: UIView!
    @IBOutlet weak var btnAllow: UIButton!
    @IBOutlet weak var lblAllow: UILabel!
    @IBOutlet weak var viewCancelOk: UIView!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var btnOk: UIButton!
    var controller: SelectCardTblVC!
    var cardName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewContainer.layer.cornerRadius = 10
        viewContainer.layer.shadowColor = UIColor.gray.cgColor
        viewContainer.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewContainer.layer.shadowOpacity = 1.0
        
        viewSelectCard.layer.borderWidth = 0.5
        viewSelectCard.layer.borderColor = UIColor.black.cgColor
        viewSelectCard.layer.cornerRadius = 2
        viewSelectCard.layer.shadowColor = UIColor.gray.cgColor
        viewSelectCard.layer.shadowOffset = CGSize(width: 1, height: 1)
        viewSelectCard.layer.shadowOpacity = 1.0
        
        btnAllow.layer.borderWidth = 1
        btnAllow.layer.borderColor = UIColor.black.cgColor
        btnAllow.layer.cornerRadius = 2
        btnAllow.layer.shadowColor = UIColor.gray.cgColor
        btnAllow.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnAllow.layer.shadowOpacity = 1.0
        
        lblAllow.text = "Allow the user to forward this card to anyone"
        
        btnCancel.layer.cornerRadius = 2
        btnCancel.layer.shadowColor = UIColor.gray.cgColor
        btnCancel.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnCancel.layer.shadowOpacity = 1.0
        
        btnOk.layer.cornerRadius = 2
        btnOk.layer.shadowColor = UIColor.gray.cgColor
        btnOk.layer.shadowOffset = CGSize(width: 1, height: 1)
        btnOk.layer.shadowOpacity = 1.0
        
    }
    
    @IBAction func btnSelectCard(_ sender: UIButton) {
        
        let childrens = self.children
        
        if childrens.count > 0{
            controller.willMove(toParent: nil)
            controller.view.removeFromSuperview()
            controller.removeFromParent()
        }else{
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "SelectCardTblVC") as? SelectCardTblVC
            controller.objSelectCard = self
            let y = viewContainer.frame.origin.y + 122
            
            controller.view.frame = CGRect(x: 32, y: y, width: view.frame.width-64 , height:view.frame.height - (y+20))
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            
        }
    }
    @IBAction func btnCheckAllow(_ sender: UIButton) {
    }
    @IBAction func btnCancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func btnOk(_ sender: UIButton) {
        
    }
    func getName(cardName: String) {
        
        controller.willMove(toParent: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParent()
        btnSelectCard.titleLabel?.text = cardName
    }
    
    
    
}
