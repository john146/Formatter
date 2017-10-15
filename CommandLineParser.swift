//
//  CommandLineParser.swift
//  Formatter
//
//  Created by John Ahrens on 10/14/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class CommandLineParser {
    func usage() {
        print("Usage:")
        print("Formatter -x <filename>")
        print("Where:")
        print("\t-x indicates that the file is XML")
        print("\t<filename> is the name (including path) of the file to parse")
    }
    
    func parseCommandLine() -> Formatter! {
        if CommandLine.argc != 3 {
            usage()
            return nil
        }
        
        var isXml = false
        let arguments = CommandLine.arguments
        for i in Int(1)..<Int(CommandLine.argc) {
            switch(arguments[i]) {
            case "-x":
                isXml = true
                print("Formatting XML File")
                
            default:
                print("File name: \(arguments[i])")
                let fileUrl = URL(fileURLWithPath: arguments[i], isDirectory: false)
                if isXml {
                    let formatter = XmlFormatter(withUrl: fileUrl)
                    if false == formatter.isReachable() { // Failing here or the line before
                        print("Returning nil")
                        usage()
                        return nil
                    } else {
                        return formatter
                    }
                }
            }
        }
        
        usage()
        return nil
    }
}
