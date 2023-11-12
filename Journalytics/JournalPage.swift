
//  JournalPage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct JournalPage: View {
    
    @State var journalEntry: JournalEntry
    
    var typesOfJournaling = ["Flow of Thoughts", "Idea", "Prompt-Based", "Day in the Life"]
    @ObservedObject var journalEntries: JournalViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 150/255, green: 172/255, blue: 132/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Add your journal entry here")
                        .font(.system(size: 28, weight: .bold))
                        .frame(height: 30)
                    HStack {
                        TextField("Insert Title Here", text: $journalEntry.title)
                            .padding()
                            .frame(width: 250, height: 35)
                            .clipShape(Capsule())
                            .background(.white)
                            .cornerRadius(10)
                        Button("Done"){
                            
                            journalEntries.addNewEntry(journalEntry: journalEntry)
                            
                        }
                        .padding()
                        .clipShape(Capsule())
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                        .tint(Color(red:183/255, green:233/235, blue: 185/255))
                        .foregroundStyle(.black)
                        
                    }
                    HStack {
                        Picker("Category", selection: $journalEntry.category){
                            ForEach(typesOfJournaling, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.automatic)
                        .background(.white)
                        .cornerRadius(10)
                        
                        
                        DatePicker("", selection: $journalEntry.creationDate, displayedComponents: .date)
                    
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    TextEditor(text: $journalEntry.entry)
                        .scrollContentBackground(.hidden)
                        .background(Color(red:193/255, green:225/235, blue: 193/255))
                        .cornerRadius(10)
                }
                .padding()
            }
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: InformationPage(), label: {
                        Image(systemName: "questionmark.circle")
                    })
                        
                }
            }
            
        } 
        
    }
}

#Preview {
    JournalPage(journalEntry: JournalEntry(title: "", entry: "", creationDate: Date.now, category: "Flow of Thoughts"), journalEntries: JournalViewModel())
}
