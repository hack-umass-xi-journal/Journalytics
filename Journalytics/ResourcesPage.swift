//
//  SwiftUIView.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct ResourcesPage: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 150/255, green: 172/255, blue: 132/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Resources")
                        .font(.system(size: 32, weight: .bold))
                        .frame(height: 30)
                    
                    
                    Text("")
                    
                    Text("[UMass CCPH](https://www.umass.edu/counseling)")
                    Text("[Groups and Workshops Calendar](https://www.umass.edu/counseling/groups-and-workshops-topic)")
                    //.foregroundColor(.white)
                    //.background(Color(red: 150/255, green: 172/255, blue: 132/255))
                    
                    
                        .frame(width: 1000)
                    
                    Text("[Massachusetts BHHL](https://www.masshelpline.com)")
                    Text("[Massachusetts DMH](https://www.mass.gov/orgs/massachusetts-department-of-mental-health)")
                    
                    Spacer()
                    
                }
            }
        }
        
    }
}

#Preview {
    ResourcesPage()
}
