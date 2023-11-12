
//  JournalPage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct JournalPage: View {
    @State private var title = ""
    @State private var longResponse = ""
    private var typesOfJournaling = ["Stream of Consciousness", "Idea", "Prompt-based", "Shadow work", "Day in the Life"]
    @State private var todaysDate: Date = Date.now
    @State private var journalCategory = "Stream of Consciousness"
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 150/255, green: 172/255, blue: 132/255)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        TextField("Insert Title Here", text: $title)
                            .padding()
                            .frame(width: 250, height: 35)
                            .clipShape(Capsule())
                            .background(.white)
                            .cornerRadius(10)
                        Button("Done"){
                            print("saved")
                        }
                        .padding()
                        .clipShape(Capsule())
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                        .tint(Color(red:183/255, green:233/235, blue: 185/255))
                        .foregroundStyle(.black)
                        
                    }
                    HStack {
                        Picker("Category", selection: $journalCategory){
                            ForEach(typesOfJournaling, id: \.self){
                                Text($0)
                            }
                        }
                        .pickerStyle(.automatic)
                        
                        DatePicker("", selection: $todaysDate, displayedComponents: .date)
                    
                            
                        
                    }
                    TextEditor(text: $longResponse)
                        .scrollContentBackground(.hidden)
                        .background(Color(red:193/255, green:225/235, blue: 193/255))
                        .cornerRadius(10)
                }
                .padding()
            }
            
        }
        
        
        
    }
}

#Preview {
    JournalPage()
}
