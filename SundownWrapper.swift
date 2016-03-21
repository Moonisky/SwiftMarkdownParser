//
//  SundownWrapper.swift
//  StackoverflowQuestionsExamples
//
//  Created by Semper_Idem on 16/3/21.
//  Copyright © 2016年 1-xing. All rights reserved.
//

import Foundation

struct SundownWrapper {
    
    /// converts the markdown in the file to an html string
    static func convertMarkdownFileAtPath(path: String) -> String {
        guard let string = try? String(contentsOfFile: path, encoding: NSUTF8StringEncoding) else { fatalError("Cannot read file path!") }
        return convertMarkdownString(string)
    }
    
    /// converts the markdown at the url to an html string
    static func convertMarkdownFileAtURL(url: NSURL) -> String {
        guard let string = try? String(contentsOfURL: url, encoding: NSUTF8StringEncoding) else { fatalError("Cannot read URL!") }
        return convertMarkdownString(string)
    }
    
    /// converts the given markdown string to an html string
    static func convertMarkdownString(markdown: String) -> String {
        if markdown.isEmpty {
            fatalError("Empty string passed into conversion method.")
        }
        
        guard let data = markdown.dataUsingEncoding(NSUTF8StringEncoding) else { fatalError("Cannot encoding the data!") }
        
        let ob = bufnew(data.length)
        var callbacks = sd_callbacks()
        var options = html_renderopt()
        
        sdhtml_renderer(&callbacks, &options, 0)
        let md = sd_markdown_new(0, 16, &callbacks, &options)
        sd_markdown_render(ob, unsafeBitCast(data.bytes, UnsafeMutablePointer<UInt8>.self), data.length, md)
        sd_markdown_free(md)
        
        if ob.memory.size == 0 {
            fatalError("Conversion of input string resulted in no html")
        }
        guard let string = String(bytesNoCopy: ob.memory.data, length: ob.memory.size, encoding: NSUTF8StringEncoding, freeWhenDone: true) else { fatalError("Cannot decoding the data!") }
        return string
    }
}