//
//  HomePage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct HomePage: View {
    @State var gratitudes = ["", "", ""]
    var body: some View {
    
        NavigationView {
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
                    .frame(height: 200)
                }
                

                Spacer()
            }
            
        }
        .padding()
    }
}

#Preview {
    HomePage()
}
