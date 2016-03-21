//
//  WKWebView+Markdown.swift
//  SwiftMarkdownParserExamples
//
//  Created by Semper_Idem on 16/3/21.
//  Copyright © 2016年 星夜暮晨. All rights reserved.
//

import WebKit

public extension WKWebView {
    
    /// Load Markdown HTML String
    public func loadMarkdownString(markdown: String, atBaseURL baseURL: NSURL? = nil, withStyleSheet sheet: String? = nil) {
        let URL = baseURL ?? NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
        let html = MarkdownParse.convertMarkdownString(markdown)
        let fullHTMLPage: String
        
        if let sheet = sheet {
            fullHTMLPage = "<html><head><meta name=\"viewport\" content=\"width=device-width\"><style type=\"text/css\">\(sheet)</style></head><body>\(html)</body></html>"
        } else {
            fullHTMLPage = "<html><head><meta name=\"viewport\" content=\"width=device-width\"><style type=\"text/css\">body { font-family:sans-serif; font-size:10pt; }</style></head><body>\(html)</body></html>"
        }
        
        loadHTMLString(fullHTMLPage, baseURL: URL)
    }
    
    /// Load Markdown HTML String
    public func loadMarkdownString(markdown: String, atBaseURL baseURL: NSURL? = nil, withStylesheetFile filename: String, andSurroundedByHTML surround: String? = nil) {
        let URL = baseURL ?? NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
        let html = MarkdownParse.convertMarkdownString(markdown)
        let fullHTMLPage: String
        
        if let surround = surround {
            fullHTMLPage = surround + filename + html
        } else {
            fullHTMLPage = "<html><head><meta name=\"viewport\" content=\"width=device-width\"><link rel=\"stylesheet\" href=\"\(filename)\" /></head><body>\(html)</body></html>"
        }
        
        loadHTMLString(fullHTMLPage, baseURL: URL)
    }
    
}