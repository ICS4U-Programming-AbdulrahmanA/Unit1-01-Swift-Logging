//
//  Logging.swift
//
//  Created by Abdul on 2026-09-17.
//  Version 1.0.0
//

import Foundation

// Constant for maximum truck weight
let maxWeight: Double = 1100.0
// Maximum weight per meter of the truck
let weightPerMeter: Double = 20.0
// Maximum length of logs total
let maxMeters: Double = maxWeight / weightPerMeter

// Logs length for user input selection
let lengthOne: Double = 0.25
let lengthTwo: Double = 0.5
let lengthThree: Double = 1.0

// Gets log length from user input.
print("Enter the length of the logs (0.25, 0.5, or 1): ", terminator: "")

if let userInput = readLine() {
    // Casts input into a double.
    if let logLength = Double(userInput) {
        // Checks if input matches valid log lengths.
        if logLength == lengthOne || logLength == lengthTwo || logLength == lengthThree {
            // Calculates number of logs.
            let numberOfLogs = Int(maxMeters / logLength)
            
            // Displays results.
            print("The truck can carry \(numberOfLogs) logs of length \(logLength) m.")
        } else {
            print("Error: Length must be 0.25, 0.5, or 1 m.")
        }
    } else {
        print("Error: Invalid input. Please enter a number.")
    }
}