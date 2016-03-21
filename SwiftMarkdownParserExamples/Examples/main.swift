//
//  main.swift
//  Examples
//
//  Created by Semper_Idem on 16/3/21.
//  Copyright © 2016年 星夜暮晨. All rights reserved.
//

import Foundation

let markdown = "# How to Write Markdown\n* Start with some bullet points\n* Crucially, you want to **emphasis** the _important_ points"
print(markdown)

print("===================")

let parser = SundownWrapper.convertMarkdownString(markdown)
print(parser)
