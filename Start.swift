//
//  Start.swift
//  Formatter
//
//  Created by John Ahrens on 10/21/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class Start: XmlState {
    
    required init() {
        super.init(withState: .start)
    }
    
    required init(withState state: State) {
        super.init(withState: .start)
    }
    
    override func process(char: String) -> XmlState {
        if char != "<" {
            return InvalidXml()
        }
        
        return OpenStart(withState: .openStart, withValue: char)
    }
}
