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
} else {
    print("Formatter is nil, check file, including path.")
}
