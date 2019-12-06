//
//  ActivityIndicatorVC.swift
//  PageController
//
//  Created by mac on 12/6/19.
//  Copyright © 2019 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialActivityIndicator
import NVActivityIndicatorView

class ActivityIndicatorVC: UIViewController {
    
    var activityIndicatorView: NVActivityIndicatorView?
    @IBOutlet var viewContainer: UIView!
    
    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 == .circleStrokeSpin }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circleStrokeSpin = presentingIndicatorTypes.first
        let size:CGFloat = 100
        let screenWidth = self.view.frame.size.width
        let screenHeight = self.view.frame.size.height

        let frame = CGRect(x: (screenWidth / 2) - (size / 2), y: (screenHeight / 2) - (size / 2), width: size, height: size)
        activityIndicatorView = NVActivityIndicatorView(frame: frame,
                                                            type: circleStrokeSpin!)
        activityIndicatorView!.padding = 20
        self.view.addSubview(activityIndicatorView!)
        self.view.addSubview(activityIndicatorView!)
        activityIndicatorView!.color = .green
        
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
}
