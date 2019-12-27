//
//  CellWebKitContainer.swift
//  PageController
//
//  Created by Brain Tech on 03/10/1941 Saka.
//  Copyright © 1941 ARD Tech pvt. ltd. All rights reserved.
//

import UIKit
import WebKit
import NVActivityIndicatorView

class CellWebKitContainer: UITableViewCell,WKNavigationDelegate {
    
    var activityIndicatorView: NVActivityIndicatorView?
    @IBOutlet weak var viewWebKitContainer: UIView!
    @IBOutlet weak var webKitView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var webKit : (() -> ()) = {}
    
    
    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 == .circleStrokeSpin }
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        webKitView.navigationDelegate = self
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
       webKit()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
       webKit()
    }
}
