//
//  SceneDelegate.swift
//  DualScreenKeyboard
//
//  Created as part of Villanova's Augmented Alternative Communication Device (AACD) Senior Design Project
//

import Foundation
import SwiftUI
import UIKit  

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = scene as? UIWindowScene else {
            return
        }
        
        let content = ExternalView()
            .environmentObject(MessageStore.shared)
        window = UIWindow(windowScene: scene)
        window?.rootViewController = UIHostingController(rootView: content)
        window?.isHidden = false
  }
}

