//
//  CoreDataStack.swift
//  PlaylistCoreData
//
//  Created by Austin Goetz on 9/25/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        // Rename ^ container name
        let container = NSPersistentContainer(name: "PlaylistCoreData")
        // '_' IDGAFOS
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    } ()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
