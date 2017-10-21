//
//  State.swift
//  Formatter
//
//  Created by John Ahrens on 10/21/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

enum State {
    case start
    case openStart
    case invalidXml
}

class XmlState {
    let state: State
    var output: String
    
    required init(withState state: State) {
        self.state = state
        self.output = ""
    }
    
    func process(char: String) -> XmlState {
        return InvalidXml();
    }
    
    func add(char: String) {
        output.append(char)
    }
}
