//
//  ListOfJournals.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct ListOfJournals: View {
    @ObservedObject var journalEntries: JournalViewModel
    var newEntry = JournalEntry(title: "", entry: "", creationDate: Date.now, category: "Flow of Thoughts")
    
    var body: some View {
        NavigationView {
            Text("Journal Entries")
                .font(.system(size: 32, weight: .bold))
                .toolbar {
                    ToolbarItem {
                        NavigationLink(destination: JournalPage( journalEntry: newEntry, journalEntries: journalEntries),
                                       label: {
                            Image(systemName: "plus")
                        })
                        .onTapGesture {
                            journalEntries.journalEntries.append(newEntry)
                        }
                    }
                }
            
            ForEach(journalEntries.journalEntries) { journal in
                NavigationLink(destination: JournalPage(journalEntry: journal, journalEntries: journalEntries),
                               label: {
                    Text(journal.title)
                })
                
                
                    
                    
            }
            
        
            
        }
        
        Spacer()
        
        
        
        
    }
        
}


#Preview {
    ListOfJournals(journalEntries: JournalViewModel())
}
