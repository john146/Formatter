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
        
        let inputString = String(data: input, encoding: .utf8)
        var retval = true
        var state: XmlState
        state = Start()
        do {
            try inputString!.forEach { char in
                let character = String(char)
                switch character {
                case "<":
                    // Beginning of element tag
                    state = state.process(char: character)
                    
                case ">":
                    // close tag
                    state = state.process(char: character)
                    
                case "?":
                    // Header ("<?")
                    state = state.process(char: character)
                    
                case "!":
                    // Header ("<!")
                    state = state.process(char: character)
                    
                case "/":
                    // close element tag
                    state = state.process(char: character)
                    
                default:
                    // This is not a special character as far as this exercise is concerned
                    state = state.process(char: character)
                }
                
                if state.state == .invalidXml {
                    print("Invalid character found \(character)")
                    retval = false
                    throw state as! Error
                }
            }
        } catch {
            
        }

        return retval
    }
    
    func openAndReadInputFile() -> Data {
        let inputData = Data()
        do {
            let fileHandle = try FileHandle(forReadingFrom: inputUrl)
            return fileHandle.readDataToEndOfFile()
        } catch {
            // TODO:
            print("Caught exception opening and reading file")
        }
        
        return inputData
    }
}
