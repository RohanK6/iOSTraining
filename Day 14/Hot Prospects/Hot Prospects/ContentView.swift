//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Rohan K on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    var prospects = Prospects()

    var body: some View {
        TabView {
            ProspectsView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Everyone")
                }
            ProspectsView()
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("Contacted")
                }
            ProspectsView()
                .tabItem {
                    Image(systemName: "questionmark.diamond")
                    Text("Uncontacted")
                }
            MeView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Me")
                }
            }
        .environmentObject(prospects)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
