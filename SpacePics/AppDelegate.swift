//
//  AppDelegate.swift
//  SpacePics
//
//  Created by Rajeev Bhatia on 12/05/19.
//  Copyright © 2019 rajeev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let searchVC = SearchViewController(nibName: String(describing: SearchViewController.self), bundle: nil)
        window?.rootViewController = searchVC
        
        return true
    }

}

