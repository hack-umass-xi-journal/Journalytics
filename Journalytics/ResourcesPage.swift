//
//  SwiftUIView.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/11/23.
//

import SwiftUI

struct ResourcesPage: View {
    var body: some View {
        
        @State var resources: [resourceCards] = [
            resourceCards(title: "CCPH @ UMass", entry: "Center for Counseling and Psychological Health", imageText: "book.fill", urls: URL(string: "https://www.umass.edu/counseling")!),
            resourceCards(title: "Help Line", entry: "Massachusetts Behavioral Health Hot Line", imageText:"logo", urls: URL(string: "https://www.masshelpline.com")!),
            resourceCards(title: "Dept. of Mental Health", entry: "Massachusetts Department of Mental Health", imageText:"logo", urls: URL(string: "https://www.mass.gov/orgs/massachusetts-department-of-mental-health")!)]
        
        NavigationView {
            ZStack {
                Color(red: 150/255, green: 172/255, blue: 132/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Resources")
                        .font(.system(size: 32, weight: .bold))
                        .frame(height: 30)
                    
                    ForEach(resources, id: \.self) { resource in
                        VStack {
                            Text(resource.title)
                                .font(.system(size: 20, weight: .bold))
                                .padding()
                            HStack {
                                Text(resource.entry)
                                    .font(.system(size: 20, weight: .bold))
                                    .padding()
                               
                            }
                            Link(resource.entry, destination: resource.urls)
                                
                                .padding()
                            
                        }
                        .frame(width: 350)
                        
                        .padding(.top)
                        .background(Color(red: 193/255, green: 225/255, blue:193/225))
                        .border(.white, width: 5)
                        .cornerRadius(10)
                        
                    }
                    
                    Spacer()
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    ResourcesPage()
}
