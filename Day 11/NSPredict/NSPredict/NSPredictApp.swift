//
//  NSPredictApp.swift
//  NSPredict
//
//  Created by Rohan K on 1/3/21.
//

import SwiftUI

@main
struct NSPredictApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: NSPredictDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
