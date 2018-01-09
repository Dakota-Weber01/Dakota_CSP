//
//  AppDelegate.swift
//  Dakota_CSP
//
//  Created by Weber, Dakota on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
    {
var window: UIWindow?
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
{
        if let splitViewController = window!.rootViewController as?
     UISplitViewController
        {
           let navigationController =
            splitViewController.viewControllers[splitViewController.viewControllers.count - 1] as! UINavigationController
            
            navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
            
            splitViewControllerDelegate = self
        }
return true
}
func applicationWillResignActive(_ application: UIApplication) {
}
func applicationDidEnterBackground(_ application: UIApplication) {
}
func applicationWillEnterForeground(_ application: UIApplication) {
}
func applicationDidBecomeActive(_ application: UIApplication) {
}
func applicationWillTerminate(_ application: UIApplication)
{

}
    func splitViewConroller( splitViewController:
        UISplitViewController,
             collapseSecondary
        secondaryViewController :
        UIViewController,
             onto primaryViewController :
        UIViewController) -> Bool
        {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else {return false}
        guard let topAsDetailController = secondaryAsNavController.topViewController as? InternetDetailViewController else {return false}
        if topAsDetailController.detailAddress == nil
        {
            // Return true to indicate we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
        }

    }
