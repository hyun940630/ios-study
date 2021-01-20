//
//  ViewController.swift
//  WebKitProject
//
//  Created by xtring on 2021/01/20.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    var webView: WKWebView!
        var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
        
        
        override func loadView() {
            super.loadView()
            webView = WKWebView(frame: self.view.frame)
            webView.uiDelegate = self
            webView.navigationDelegate = self
            webView.scrollView.bounces = false
            webView.allowsBackForwardNavigationGestures = true
            
            self.view = self.webView!
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myBlog = "https://xtring-dev.tistory.com/"
            let url = URL(string: myBlog)
            let request = URLRequest(url: url!)
            webView.load(request)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .darkContent
        }

        @available(iOS 8.0, *)
        public func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Swift.Void){
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let otherAction = UIAlertAction(title: "OK", style: .default, handler: {action in completionHandler()})
            alert.addAction(otherAction)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        @available(iOS 8.0, *)
        public func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Swift.Void){
            let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: {(action) in completionHandler(false)})
            let okAction = UIAlertAction(title: "OK", style: .default, handler: {(action) in completionHandler(true)})
            alert.addAction(cancelAction)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        @available(iOS 8.0, *)
        public func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!){
            activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
            activityIndicator.frame = CGRect(x: view.frame.midX-50, y: view.frame.midY-50, width: 100, height: 100)
            activityIndicator.color = UIColor.red
            activityIndicator.hidesWhenStopped = true
            activityIndicator.startAnimating()
            self.view.addSubview(activityIndicator)
        }
        
        
        @available(iOS 8.0, *)
        public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!){
            //activityIndicator.stopAnimating()
            self.activityIndicator.removeFromSuperview()
        }
}

