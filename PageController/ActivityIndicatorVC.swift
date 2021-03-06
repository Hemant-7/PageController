//
//  ActivityIndicatorVC.swift
//  PageController
//
//  Created by mac on 12/6/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

//https://github.com/ninjaprox/NVActivityIndicatorView for indicator

class ActivityIndicatorVC: UIViewController {
    
    var activityIndicatorView: NVActivityIndicatorView?
    @IBOutlet var viewContainer: UIView!
    
    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 == .circleStrokeSpin }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circleStrokeSpin = presentingIndicatorTypes.first
        let size:CGFloat = 140
        let screenWidth = self.view.frame.size.width
        let screenHeight = self.view.frame.size.height

        let frame = CGRect(x: (screenWidth / 2) - (size / 2), y: (screenHeight / 2) - (size / 2), width: size, height: size)
        activityIndicatorView = NVActivityIndicatorView(frame: frame,
                                                            type: circleStrokeSpin!)
        activityIndicatorView!.padding = 20
        self.view.addSubview(activityIndicatorView!)
        self.view.addSubview(activityIndicatorView!)
        activityIndicatorView!.color = .blue
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnStarrt(_ sender: Any) {
        activityIndicatorView!.startAnimating()
    }
    
    @IBAction func btnStop(_ sender: Any) {
        activityIndicatorView!.stopAnimating()
    }
    
    @IBAction func btnChangePassword(_ sender: Any) {
        let contactVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContactUsVC") as! ContactUsVC
        navigationController?.pushViewController(contactVC, animated: true)
    }
    @IBAction func btnChangeLoginId(_ sender: Any) {
        let webKitVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WebKitVC") as! WebKitVC
        navigationController?.pushViewController(webKitVC, animated: true)

    }
    @IBAction func btnChangeRegisterMobileNumber(_ sender: Any) {
        let newVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewCardIntroVC") as! NewCardIntroVC
               navigationController?.pushViewController(newVC, animated: true)
    }
    @IBAction func btnchangeRegisterEmail(_ sender: Any) {
        let swapIntroVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SwapIntroVC") as! SwapIntroVC
        navigationController?.pushViewController(swapIntroVC, animated: true)
    }
}
