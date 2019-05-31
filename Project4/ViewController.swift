//
//  ViewController.swift
//  Project4
//
//  Created by Steven Jemmott on 31/05/2019.
//  Copyright © 2019 Lagom Experiences. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

}

extension ViewController: WKNavigationDelegate {
    
}
