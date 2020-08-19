//
//  AppDelegate.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/20.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let rootViewController = ViewController()
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
    self.window = window
    return true
  }
  
  
  
  
}

