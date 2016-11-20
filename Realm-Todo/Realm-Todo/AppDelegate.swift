//
//  AppDelegate.swift
//  Realm-Todo
//
//  Created by Shirley on 2016-11-18.
//  Copyright © 2016 DuckLord. All rights reserved.
//

import UIKit
import RealmSwift

let uiRealm = try! Realm()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

