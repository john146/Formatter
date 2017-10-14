//
//  CommandLineParser.swift
//  Formatter
//
//  Created by John Ahrens on 10/14/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

class CommandLineParser {
    func parseCommandLine() {
        let arguments = CommandLine.arguments
        for i in Int(1)..<Int(CommandLine.argc) {
            switch(arguments[i]) {
            case "-x":
                print("Formatting XML File")
                
            default:
                print("File name: \(arguments[i])")
            }
        }
        /*
        for argument in CommandLine.arguments {
            switch argument {
            case "-x":
                print("Formatting XML File")
                
            default:
                print("File name: \(argument)")
            }
        }
 */
    }
}
