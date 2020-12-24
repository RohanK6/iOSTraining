//
//  ContentView.swift
//  UnitConverter
//
//  Created by Rohan K on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    @State var temperatureToConvert = 0.0
    @State var initialUnit = 0
    @State var selectedUnit = 0
    
    let temperatures = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var convertedTemperature: Double {
        let tempInit = Double(temperatureToConvert)
        let unitToConvertFrom = temperatures[selectedUnit]
        let unitToConvertTo = temperatures[selectedUnit]
        
        if (unitToConvertTo == unitToConvertFrom) {
            return Double(temperatureToConvert)
        }
        
        switch unitToConvertFrom {
        case "Celsius":
            switch unitToConvertTo {
            case "Fahrenheit":
                // C - F
                return Double((tempInit * 9/5) + 32)
            default:
                return Double((tempInit + 273.15))
            }
        case "Fahrenheit":
            switch unitToConvertTo {
            case "Celsius":
                // F - C
                return Double((tempInit - 32.0) * 5/9)
            default:
                // F - K
                return Double((tempInit - 32.0) * 5/9 + 273.15)
            }
        default:
            switch unitToConvertTo {
            case "Fahrenheit":
                // K - F
                return Double((tempInit - 273.15) * 9/5 + 32)
            default:
                // K - C
                return Double(tempInit - 273.15)
            }
        }
    }
    
var body: some View {
    NavigationView {
        Form {
            Section {
                TextField("Temperature", text: $temperatureToConvert)
            }
            Section {
                Picker("Choose a unit to convert from", selection: $initialUnit) {
                    ForEach(0 ..< temperatures.count) {
                        Text("\(self.temperatures[$0])")
                    }
                }
            }
            Section(header: Text("How much tip do you want to leave?")) {
                Picker("Choose a unit to convert to", selection: $selectedUnit) {
                    ForEach(0 ..< temperatures.count) {
                        Text("\(self.tipPercentages[$0])%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Section {
                Text("Converted temperature: $\(convertedTemperture, specifier: "%.2f")")
            }
        }.navigationBarTitle("Unit Converter")
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
