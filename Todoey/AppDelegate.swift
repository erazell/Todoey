//
//  AppDelegate.swift
//  Todoey
//
//  Created by Janusz  on 24/02/2019.
//  Copyright © 2019 Janusz . All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
       // print(Realm.Configuration.defaultConfiguration.fileURL)
      
        do {
            _ = try Realm()
            
            
        } catch {
            print("eroor installation")
        }
        
        return true
    }
    
//    func applicationWillTerminate(_ application: UIApplication) {
//
//        self.saveContext()
//    }
//
    // MARK: - Core Data stack
    
//     var persistentContainer: NSPersistentContainer = {
//
//        let container = NSPersistentContainer(name: "DAtaModel")
//        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
//            if let error = error as NSError? {
//
//                fatalError("Unresolved error \(error), \(error.userInfo)")
//            }
//        })
//        return container
//    }()
//
//    // MARK: - Core Data Saving support
//
//    func saveContext () {
//        let context = persistentContainer.viewContext
//        if context.hasChanges {
//            do {
//                try context.save()
//            } catch {
//
//                let nserror = error as NSError
//                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
//            }
//        }
//    }


}

