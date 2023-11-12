//
//  InformationPage.swift
//  Journalytics
//
//  Created by Atonbara Diete-Koki on 11/12/23.
//

import SwiftUI

struct InformationPage: View {
    var typesOfJournaling = ["Flow of Thoughts", "Idea", "Prompt-Based", "Day in the Life", "Gratitude Journaling"]
    var infoOnJournaling = ["This approach has no identifiable goal but instead is a type of brain dump. This helps you become more self aware and work through issues that may be occuring", "This helps you capture your thoughts and improve productivity as you will not expend energy on storing data", "This approach helps you dig deeper without having to look for a particular topic", "This form of journaling helps you capture daily routines and highlight milestones", "This simple act of reflecting on and expressing gratitude can have several positive effects on mental, emotional, and even physical well-being by helping you have a more positive outlook on life."]

    var body: some View {
        ZStack {
            Color(red: 150/255, green: 172/255, blue: 132/255)
                .ignoresSafeArea()
            VStack {
                Text("Types of Journaling")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(.white)
                ForEach (0 ... 4, id: \.self) { num in
                    VStack {
                        Text(typesOfJournaling[num])
                            .font(.system(size: 20, weight: .bold))
                        Text(infoOnJournaling[num])
                            .font(.system(size: 15, weight: .medium))
                    }
                    .frame(width: 310)
                    .foregroundColor(.black)
                    .font(Font.body.bold())
                    .padding()
                    
                    .background(Color(red:183/255, green:233/235, blue: 185/255))
                    .cornerRadius(10)
                    
                    
                }
                
            }
            
        }
        
        
        }
        
}

#Preview {
    InformationPage()
}
