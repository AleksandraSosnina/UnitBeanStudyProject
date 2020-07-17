//
//  SceneDelegate.swift
//  UnitBeanNews
//
//  Created by Sosnina Sasha on 09.07.2020.
//  Copyright © 2020 Sosnina Aleksandra. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

       
       func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
       {
           if let windowScene = scene as? UIWindowScene {

               let window = UIWindow(windowScene: windowScene)
              let timeline = UIStoryboard(name: "UnitBeanNewsViewController", bundle: nil).instantiateInitialViewController() as! UnitBeanNewsViewController
              // let timeline = UnitBeanNewsViewController()

               let navigation = UINavigationController(rootViewController: timeline)
               window.rootViewController = navigation

               self.window = window
               window.makeKeyAndVisible()
           }
       }
}
