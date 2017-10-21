//
//  main.swift
//  Formatter
//
//  Created by John Ahrens on 10/14/17.
//  Copyright © 2017 John Ahrens. All rights reserved.
//

import Foundation

let parser = CommandLineParser()
if let formatter = parser.parseCommandLine() {
    print("Got a valid formatter")
    if formatter.format() {
        print("Successfully formatted")
        exit(0)
    } else {
        print("Formatting failed")
        exit(2)
    }
} else {
    print("Formatter is nil, check file, including path.")
    exit(1)
}
