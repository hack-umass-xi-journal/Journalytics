//
//  AppStorage.swift
//  Journalytics
//
//  Created by Shhreya Anand  on 11/11/23.
//

import SwiftUI

struct AppStorage: View {
    
    @State var currentUserName:String?
    var body: some View {
        VStack(spacing:20){
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text(name)
                 
            }
            
            Button("Save".uppercased()) {
                let name: String = "User X"
                currentUserName = name
                UserDefaults.standard.setValue(name, forKey: "name")
                
            }
            
        }
        .onAppear() {
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

#Preview {
    AppStorage()
}
