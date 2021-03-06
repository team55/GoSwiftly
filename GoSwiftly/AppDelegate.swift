//
//  AppDelegate.swift
//  GoSwiftly
//
//  Created by Ty Cobb on 6/3/14.
//  Copyright (c) 2014 Ty Cobb. All rights reserved.
//

import UIKit

@UIApplicationMain class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        
        let notificationSettings = UIUserNotificationSettings(forTypes: .Badge | .Sound | .Alert, categories: nil)
        application.registerUserNotificationSettings(notificationSettings)
        application.registerForRemoteNotifications()

        // configure the logger
        Logger.singleton.state = LogState.Info
        Logger.info("logging state: \( Logger.singleton.formatter.label(forState: Logger.singleton.state) )")
        
        // configure services adapter
        Records.adapter = ParseAdapter()
        
        return true
    }
    
    //
    // MARK: Notifications
    //
    
    func application(application: UIApplication!, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings!) {
    
    }
    
    func application(application: UIApplication!, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData!) {

    }
    
    func application(application: UIApplication!, didFailToRegisterForRemoteNotificationsWithError error: NSError!) {

    }
    
    func application(application: UIApplication!, didReceiveRemoteNotification userInfo: NSDictionary!) {
        println("notification: \(userInfo)")
    }

}

