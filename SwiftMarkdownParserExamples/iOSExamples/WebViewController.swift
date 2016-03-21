//
//  WebViewController.swift
//  SwiftMarkdownParserExamples
//
//  Created by Semper_Idem on 16/3/21.
//  Copyright © 2016年 星夜暮晨. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var text = ""
    var isWKView = true
    
    lazy var uiwebview: UIWebView = {
        let bounds = UIScreen.mainScreen().bounds
        return UIWebView(frame: CGRect(x: 0, y: 64, width: bounds.width, height: bounds.height))
    }()
    lazy var wkwebview: WKWebView = {
        let bounds = UIScreen.mainScreen().bounds
        return WKWebView(frame: CGRect(x: 0, y: 64, width: bounds.width, height: bounds.height))
    }()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if isWKView {
            view.addSubview(wkwebview)
            wkwebview.loadMarkdownString(text)
        } else {
            view.addSubview(uiwebview)
            uiwebview.loadMarkdownString(text)
        }
    }
    
}

