//
//  OpenStart.swift
//  Formatter
//
//  Created by John Ahrens on 10/21/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation


class OpenStart: XmlState {
    var value: String
    
    required init() {
        self.value = ""
        super.init(withState: .openStart)
    }
    
    /**
     * Only here to satify the compiler. Do Not Use.
     */
    required init(withState: State) {
        self.value = ""
        super.init(withState: .openStart)
    }
    
    required init(withState state: State, withValue value: String) {
        self.value = value
        super.init(withState: .openStart)
    }
}
