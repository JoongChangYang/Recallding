//
//  AppDelegate.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/20.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit
import SnapKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let rootViewController = RCNavigationController(rootViewController: RCRecordViewController())
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
    self.window = window
    return true
  }
  
  func applicationDidEnterBackground(_ application: UIApplication) {
    print(#function)
  }
  
  func applicationWillTerminate(_ application: UIApplication) {
    print(#function)
  }
  
  func applicationDidBecomeActive(_ application: UIApplication) {
    print(#function)
  }
  
  func applicationWillResignActive(_ application: UIApplication) {
    print(#function)
    
  }
  
}

