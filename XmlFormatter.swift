//
//  XmlFormatter.swift
//  Formatter
//
//  Created by John Ahrens on 10/14/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class XmlFormatter: Formatter {
    
    required init(withUrl: URL) {
        super.init(withUrl: withUrl)
    }
    
    override func format() -> Bool {
        let input = openAndReadInputFile()
        if input.isEmpty {
            return false
        }
        
        return true
    }
    
    func openAndReadInputFile() -> Data {
        let inputData = Data()
        do {
            let fileHandle = try FileHandle(forReadingFrom: inputUrl)
            return fileHandle.readDataToEndOfFile()
        } catch {
            
        }
        
        return inputData
    }
}
