//
//  ViewController.swift
//  WebViewTest
//
//  Created by xtring on 2021/03/03.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var webView: WKWebView!
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    var isX: Bool = false

    override func loadView() {
        super.loadView()
        webView = WKWebView(frame: self.view.frame)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        webView.scrollView.bounces = false
        webView.allowsBackForwardNavigationGestures = true
        
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isX = false
        
        let urlAddress = "http://algo.gohome.website/"
        let url = URL(string: urlAddress)
        let request = URLRequest(url: url!)
        webView?.load(request)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resource that can be recreated.
    }
    
    
    // alert 처리
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        alertController.addAction(
            UIAlertAction(
                title: "확인",
                style: .default,
                handler: {
                    (action) in completionHandler()
                    
                }
            )
        )
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    //confirm 처리
    func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Void) {
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "확인", style: .default, handler: { (action) in completionHandler(true) }))
        alertController.addAction(UIAlertAction(title: "취소", style: .default, handler: { (action) in completionHandler(false) }))
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    //confirm 처리2
    func webView(_ webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (String?) -> Void) {
        let alertController = UIAlertController(title: "", message: prompt, preferredStyle: .alert)
        alertController.addTextField {
            (textField) in textField.text = defaultText
            
        }
        alertController.addAction(UIAlertAction(
                                    title: "확인",
                                    style: .default,
                                    handler: { (action) in
                                        if let text = alertController.textFields?.first?.text { completionHandler(text) }
                                        else { completionHandler(defaultText) }
                                    }
        ))
        alertController.addAction(UIAlertAction(title: "취소", style: .default, handler: { (action) in completionHandler(nil) }))
        
        self.present(alertController, animated: true, completion: nil)
    }

    // href="_blank" 처리
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil {
            webView.load(navigationAction.request)
        }
        return nil
    }
    
    // 중복적으로 리로드 방지
    public func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        webView.reload()
    }
}
