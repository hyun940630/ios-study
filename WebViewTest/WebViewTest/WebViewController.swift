//
//  WebViewController.swift
//  WebViewTest
//
//  Created by xtring on 2021/03/08.
//

import Foundation
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        webView = WKWebView(frame: self.view.frame)
        self.view = self.webView!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sURL = "https://www.naver.com"
        let uURL = URL(string: sURL)
        let request = URLRequest(url: uURL!)
        webView.load(request)
    }
}
