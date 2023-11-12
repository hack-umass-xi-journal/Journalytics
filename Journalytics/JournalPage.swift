
//  JournalPage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct JournalPage: View {
    @State private var title = ""
    @State private var longResponse = ""
    private var typesOfJournaling = ["Flow of Thoughts", "Idea", "Prompt-Based", "Shadow Work", "Day in the Life"]
    @State private var todaysDate: Date = Date.now
    @State private var journalCategory = "Flow of Thoughts"
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
                        .background(.white)
                        .cornerRadius(10)
                        //.frame(width: 200, height: 35)
                        
                        DatePicker("", selection: $todaysDate, displayedComponents: .date)
                    
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
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
