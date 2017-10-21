//
//  InvalidXml.swift
//  Formatter
//
//  Created by John Ahrens on 10/21/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation


class InvalidXml: XmlState, Error {
    
    required init() {
        super.init(withState: .invalidXml)
    }
    
    required init(withState state: State) {
        super.init(withState: .invalidXml)
    }
}
