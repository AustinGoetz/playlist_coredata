//
//  Playlist+Convenience.swift
//  PlaylistCoreData
//
//  Created by Austin Goetz on 9/25/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    convenience init(playlistName: String, songs: [Song] = [], moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.playlistName = playlistName
    }
}
