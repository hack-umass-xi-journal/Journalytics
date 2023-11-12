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
                ZStack {
                    Color(red: 150/255, green:172/255 , blue:132/255 )
                        .ignoresSafeArea()
                    VStack {
                        ForEach(journalEntries.journalEntries) { journal in
                            NavigationLink(destination: JournalPage(journalEntry: journal, journalEntries: journalEntries),
                                           label: {
                                VStack {
                                    
                                    Text(journal.title)
                                        .foregroundStyle(.black)
                                        .font(.system(size: 15, weight: .bold))
                                    Text(journal.creationDate.formatted(.dateTime.day().month().year()))
                                        .foregroundStyle(.black)
                                        .font(.system(size: 15, weight: .bold))
                                    Text(journal.category)
                                        .foregroundStyle(.black)
                                        .font(.system(size: 15, weight: .bold))
                                    
                                }
                                .padding()
                                .background(Color(red: 193/255, green: 225/255, blue:193/225))
                                .border(.white, width: 5)
                                .cornerRadius(10)
                            })
                        }
                        .padding()
                        .navigationTitle("All Journal Entries")
                        .navigationBarTitleDisplayMode(.automatic)
                        
                        Spacer()
                        
                    }
                    
                }
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
                    
            }

    }
        
}


#Preview {
    ListOfJournals(journalEntries: JournalViewModel())
}
