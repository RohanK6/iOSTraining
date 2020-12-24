//
//  ContentView.swift
//  WeSplit
//
//  Created by Rohan K on 12/22/20.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
        @State private var numberOfPeople = 0
        @State private var tipPercentage = 2
        
        let tipPercentages = [0, 10, 15, 20, 25]
        
        var totalPerPerson: Double {
            let peopleCount = Double(numberOfPeople + 1)
            let tipSelection = Double(tipPercentages[tipPercentage])
            let orderAmount = Double(checkAmount) ?? 0

            let tipValue = orderAmount / 100 * tipSelection
            let grandTotal = orderAmount + tipValue
            let amountPerPerson = grandTotal / peopleCount

            return amountPerPerson
        }
            
        var body: some View {
            NavigationView {
                Form {
                    Section {
                        TextField("Amount", text: $checkAmount)
                    }
                    Section {
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(1 ..< 10) {
                                Text("\($0) people")
                            }
                        }
                    }
                    Section(header: Text("How much tip do you want to leave?")) {
                        Picker("Tip percentage", selection: $tipPercentage) {
                            ForEach(0 ..< tipPercentages.count) {
                                Text("\(self.tipPercentages[$0])%")
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    Section {
                        Text("Amount per person: $\(totalPerPerson, specifier: "%.2f")")
                    }
                }.navigationBarTitle("WeSplit")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
