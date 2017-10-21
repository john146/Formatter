//
//  Document.swift
//  Formatter
//
//  Created by John Ahrens on 10/21/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class Document {
    var openTag: String
    var closeTag: String
    var combinationTag: String
    var rootElement: Element
    var value: String
    
    required init() {
        openTag = ""
        closeTag = ""
        combinationTag = ""
        rootElement = Element()
        value = ""
    }
}
