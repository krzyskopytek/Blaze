//
//  BlazeApp.swift
//  Blaze
//
//  Created by Krzys Kopytek on 2023-06-14.
//

import SwiftUI
import SwiftData

@main
struct BlazeApp: App {
    
    var body: some Scene {
        DocumentGroup(editing: Card.self, contentType: .flashCards) {
            ContentView()
        }
    }
}
