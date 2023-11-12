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
    let title: String
    let entry: String
    let creationDate: Date
    let category: String
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

struct resourceCards: Identifiable {
    let id = UUID()
    let title: String
    let entry: String
    let image: Image
    let urls: [URL]
}
