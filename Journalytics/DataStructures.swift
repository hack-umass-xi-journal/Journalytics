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
        Image(imageText)
    }
    var urls: [URL]
}

class JournalViewModel: ObservableObject {
    @Published var journalEntries: [JournalEntry] = []

    init () {
        self.journalEntries.append(JournalEntry(title: "my first", entry: "abc", creationDate: Date.now, category: "Idea"))
    }
    func addNewEntry(journalEntry: JournalEntry){
        journalEntries.append(journalEntry)
    }
    func deleteJournalEntry(index: IndexSet){
        journalEntries.remove(atOffsets: index)
    }
}
