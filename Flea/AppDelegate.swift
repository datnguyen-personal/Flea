//
//  AppDelegate.swift
//  Flea
//
//  Created by Sinh Quyen Ngo on 12/17/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        ParseInterface.sharedInstance.parseSetup()
        PFUser.enableAutomaticUser()
        
        let defaultACL = PFACL();
        
        // If you would like all objects to be private by default, remove this line.
        defaultACL.publicReadAccess = true
        
        PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser:true)
        
        return true
    }

}

