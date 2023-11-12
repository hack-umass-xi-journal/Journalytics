//
//  DataStructures.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import Foundation
import SwiftUI

struct JournalEntry: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var entry: String
    var creationDate: Date
    var category: String
}

struct Gratitude: Identifiable, Hashable {
    let id = UUID()
    let gratitudes: [String]
    let creationDate: Date
}

struct todaysMood: Identifiable, Hashable {
    let id = UUID()
    let mood: String
    let creationDate: Date
}

struct resourceCards: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var entry: String
    var imageText: String
    var image: Image {
        Image(systemName: imageText)
    }
    var urls: URL
}


