//
//  SecondDisplayApp.swift
//  DualScreenKeyboard
//
//  Created as part of Villanova's Augmented Alternative Communication Device (AACD) Senior Design Project
// 
//
//  Application displays functional, custom full screen keyboard along with a message preview to the user
//  while simultaniously updating the ExternalView with a copy of the typed message that is displayed on an
//  external display. Designed around the need for a more natural method of communincation for those with limited
//  speech and motor functions.

import SwiftUI
import UIKit

final class MessageStore: ObservableObject {
    static let shared = MessageStore("")
    @Published var message: String
    
    init(_ message: String) {
        self.message = message
    }
}

@main
struct SecondDisplayApp: App {
    @StateObject var store = MessageStore.shared
    var body: some Scene {
        WindowGroup {
            UserView()
                .environmentObject(MessageStore.shared)
        }
    }
}
