//
//  AppDelegate.swift
//  Re-Resolver
//
//  Created by Keith Gilbertson on 5/13/16.
//  Copyright © 2016 Amanda and Keith. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var backgroundGradient = ResolverConstants.darkCalm


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // use custom bar button image
        let barButtonAppearance = UIBarButtonItem.appearance()
        let backImage = UIImage(named: "navbar_button")
        barButtonAppearance.setBackButtonBackgroundImage(backImage, for: UIControlState(), barMetrics: .default  )
        
        // register defaults for background gradient
        let dictionary = ["ColorPreference": 0]
        UserDefaults.standard.register(defaults: dictionary)
        
        let colorPreference = UserDefaults.standard.integer(forKey: "ColorPreference")
        switch colorPreference {
        case 1:
            backgroundGradient = ResolverConstants.crimson
        case 2:
            backgroundGradient = ResolverConstants.clover
        case 3:
            backgroundGradient = ResolverConstants.ocean
        case 4:
            backgroundGradient = ResolverConstants.passion
        case 5:
            backgroundGradient = ResolverConstants.bornstein
        default:
            backgroundGradient = ResolverConstants.darkCalm
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

