//
//  HomePage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct HomePage: View {
    @State var gratitudes = ["", "", ""]
    @State var todaysMood: Int = 1
    var body: some View {
        
            
            
            NavigationView {
                ZStack {
                    Color(red: 150/255, green: 172/255, blue: 132/255)
                        
                    VStack {
                        Text("App Title")
                            .font(.system(size: 32, weight: .bold))
                            .frame(height: 30)
                        Text("Quote here")
                            .font(.system(size: 20, weight: .semibold))
                            .frame(height: 30)
                        
                        HStack {
                            NavigationLink {
                                JournalPage()
                            } label: {
                                Image(systemName: "list.dash")
                                    .foregroundColor(.gray)
                            }
                            
                            NavigationLink {
                                ResourcesPage()
                            } label: {
                                Image(systemName: "list.dash")
                                    .foregroundColor(.gray)
                            }
                        }
                        //gratitide vstack
                        VStack {
                            List {
                                Section{
                                    TextField("", text: $gratitudes[0])
                                    TextField("", text: $gratitudes[1])
                                    TextField("", text: $gratitudes[2])
                                } header: {
                                    Text("What are you grateful for today?")
                                }
                            }
                            .scrollContentBackground(.hidden)
                            .frame(height: 200)
                        }
                        
                        
                        Section {
                            Picker("How are you feeling today?", selection: $todaysMood){
                                Text("1")
                                Text("2")
                                Text("3")
                            }
                            .pickerStyle(.segmented)
                        } header : {
                            Text("Daily Check In")
                        }
                        
                        Spacer()
                    }
                    
                }
                .scrollContentBackground(.hidden)
                .padding()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    HomePage()
}
