//
//  ListOfJournals.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct ListOfJournals: View {
    @State var entries = [JournalEntry(title: "Title 1",
                                               entry: "Entry 1",
                                               creationDate: Date(),                                            category: "Stream of Consciousness"),
                                  JournalEntry(title: "Title 2",
                                               entry: "Entry 2",
                                               creationDate: Date(),      category: "Day in the Life"),
                                  JournalEntry(title: "Title 3",
                                               entry: "Entry 3",creationDate: Date(),
                                               category: "Shallow Work")]
    
    var body: some View {
        Text("Journal Entries")
            .font(.system(size: 32, weight: .bold))
        
        List {
            ForEach(entries, id: \.self){
                Text($0.title)
            }
        }
    }
}

#Preview {
    ListOfJournals()
}
