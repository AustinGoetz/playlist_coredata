//
//  PlaylistController.swift
//  PlaylistCoreData
//
//  Created by Austin Goetz on 9/25/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation

class PlaylistController {
    
    
    // CRUD
    // Create
    func createPlaylist(withName name: String) {
        
    }
    
    // Delete
    func deletePlaylist(playlist: Playlist) {
        
    }
    
    // Save
    func saveToPersistentStore() {
        do {
            try CoreDataStack.context.save()
            
        } catch {
            print("There was an error saving the Objects in \(#function): \(error.localizedDescription)")
        }
    }

}
