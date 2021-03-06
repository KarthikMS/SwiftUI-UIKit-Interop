//
//  SceneDelegate.swift
//  SwiftUIPractice1
//
//  Created by Karthik on 27/12/20.
//

import UIKit
import SwiftUI

let appConfig = AppConfig(uiRenderingFramework: .swiftUI)

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ColorsListScreenAssembler.createInstance() as? UIViewController
        self.window = window
        window.makeKeyAndVisible()
    }
}

