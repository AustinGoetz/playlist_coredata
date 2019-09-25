//
//  Song+Convenience.swift
//  PlaylistCoreData
//
//  Created by Austin Goetz on 9/25/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    convenience init(songName: String, artistName: String, playlist: Playlist, moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.songName = songName
        self.artistName = artistName
        self.playlist = playlist
    }
}
