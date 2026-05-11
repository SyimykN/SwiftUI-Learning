//
//  ContentView.swift
//  TestingProjectOne
//
//  Created by Syimyk on 22/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var numberOfPeople: Int = 2
    
    var body: some View {
        Form {
            Section("Enter a text field to see it change!") {
                TextField("Enter a name", text: $name)
                    .font(.headline)
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.wheel)
            }
        }
    }
}

#Preview {
    ContentView()
}
