//
//  ContentView.swift
//  UnitConversionApp
//
//  Created by Syimyk on 23/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit: String = "m"
    @State private var outputUnit: String = "in"
    @State private var inputValue: Double = 0.0
    
    private var result: Double {
        // Step 1: Convert input to base unit (meters)
        let valueInMeters: Double
        switch inputUnit {
        case "m":
            valueInMeters = inputValue
        case "km":
            valueInMeters = inputValue * 1000.0
        case "in":
            valueInMeters = inputValue / 39.3701
        default:
            valueInMeters = 0.0
        }
        
        // Step 2: Convert from base unit (meters) to output unit
        switch outputUnit {
        case "m":
            return valueInMeters
        case "km":
            return valueInMeters / 1000.0
        case "in":
            return valueInMeters * 39.3701
        default:
            return 0.0
        }
    }
    
    let lengthUnits: [String] = [
        "m",
        "in",
        "km"
    ]
    
    var body: some View {
        Form {
            Section {
                Picker("Choose input unit", selection: $inputUnit) {
                    ForEach(lengthUnits, id: \.self) {
                        Text("\($0)")
                    }
                }
                Picker("Choose output unit", selection: $outputUnit) {
                    ForEach(lengthUnits, id: \.self) {
                        Text("\($0)")
                    }
                }
            }
            Section("Enter the value you want to convert") {
                TextField("Enter value", value: $inputValue, format: .number).keyboardType(.decimalPad)
            }
            Text("The converted value is: \(result.formatted())")
        }
    }
}

#Preview {
    ContentView()
}
