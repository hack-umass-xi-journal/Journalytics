//
//  HomePage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct HomePage: View {
    @State var gratitudes = ["", "", ""]
    @State var todaysMood = ""
    @State var showJournalPage: Bool = false
    @State var showResourcesPage: Bool = false
    @StateObject var journalEntries: JournalViewModel = JournalViewModel()
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 150/255, green: 172/255, blue: 132/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Calmpanion")
                        .font(.system(size: 32, weight: .bold))
                        .frame(height: 30)
                        //.italic()
                    Text("Quote here")
                        .font(.system(size: 20, weight: .semibold))
                        .frame(height: 30)
                    
                    HStack {
                        
                        NavigationLink(destination: ListOfJournals(journalEntries: journalEntries),
                                       label: {
                            Text("Journal")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .frame(width: 75, height: 20)
                                .padding(.all,10)
                                .foregroundColor(.blue)
                            
                            Image(systemName: "book.fill")
                                .foregroundColor(.black)
                        })
                        .background(Color(red: 182/255, green: 186/255, blue: 164/255))
                        .cornerRadius(10)
                        
                        NavigationLink(destination: ResourcesPage(),
                                       label: {
                            Text("Resources")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .frame(width: 75, height: 20)
                                .padding(.all,10)
                                .foregroundColor(.blue)
                            
                            Image(systemName: "info.circle")
                                .foregroundColor(.black)
                        })
                        .background(Color(red: 182/255, green: 186/255, blue: 164/255))
                        .cornerRadius(10)
                        
                    }
                    
                    .padding(.top)
                    
                    //gratitide vstack
                    Text("Daily Gratitude!")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                        .padding(.top)
                    
                    VStack {
                        List {
                            Section{
                                TextField("", text: $gratitudes[0])
                                TextField("", text: $gratitudes[1])
                                TextField("", text: $gratitudes[2])
                                
                            }
                        header: {
                            Text("List three things you are grateful for!")
                                .font(.system(size: 12)).foregroundColor(.white)
                        }
                        .listRowBackground(Color(red: 167/255, green: 191/255, blue: 173/255))
                        }
                        .scrollDisabled(true)
                        .scrollContentBackground(.hidden)
                        .frame(height: 200)
                        .background(Color(red: 182/255, green: 186/255, blue: 164/255))
                        .cornerRadius(10)
                        .padding(.bottom)
                    }
                    Text("Daily Check In!")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                    VStack {
                        Section {
                            Picker("How are you feeling today?", selection:$todaysMood){
                                HStack {
                                    Text("☹️")
                                    Text("🙁")
                                    Text("😐")
                                    Text("😊")
                                    Text("😄")
                                }
                                .scrollDisabled(true)
                            }
                            .scrollContentBackground(.hidden)
                            .pickerStyle(.segmented)
                        } 
                        header : {
                            Text("How are you feeling today?")
                                .foregroundColor(.green)
                                .font(.system(size: 15, weight: .bold))
                        }
                    }
                    .frame(height: 100)
                    .background(Color(red: 82/255, green: 86/255, blue: 64/255))
                    .cornerRadius(10)
                }
                .scrollContentBackground(.hidden)
                .padding()
            }
        }
    }
}
#Preview {
    HomePage()
}
