//
//  SongController.swift
//  PlaylistCoreData
//
//  Created by Austin Goetz on 9/25/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation

class SongController {
    // Create
    func createSong(songName: String, artistName: String, to playlist: Playlist) {
        Song(songName: songName, artistName: artistName, playlist: playlist)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
    
    // Delete
    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
}
