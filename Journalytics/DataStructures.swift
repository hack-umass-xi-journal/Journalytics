//
//  DataStructures.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import Foundation
struct JournalEntry: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let entry: String
    let creationDate: Date
    let category: String
}

struct Gratitude: Identifiable, Hashable {
    let id = UUID()
    let gratitudes = ["", "", ""]
    let creationDate: Date
}

struct todaysMood: Identifiable, Hashable {
    let id = UUID()
    let mood = ""
    let creationDate: Date
}
