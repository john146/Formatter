//
//  Formatter.swift
//  Formatter
//
//  Created by John Ahrens on 10/14/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class Formatter {
    let inputUrl: URL
    
    required init(withUrl: URL) {
        self.inputUrl = withUrl
    }
    
    func isReachable() -> Bool {
        if let isReachable = try? inputUrl.checkResourceIsReachable() {
            return isReachable
        }
        
        return false;
    }
}
