//
//  Onboarding.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 14/10/2022.
//

import SwiftUI

struct Onboarding: View {
    @Binding var ShowHome : Bool
    var body: some View {
        VStack{
            Spacer()
            VStack(alignment: .leading, spacing: 32) {
                OnboardInfoView(imageName: "building.2.crop.circle",
                                title: "Restaurant Locations",
                                description: "Find places to dine around the convention center")
                
                OnboardInfoView(imageName: "checkmark.circle",
                                title: "Check In",
                                description: "Let others know where you are")
                
                OnboardInfoView(imageName: "person.2.circle",
                                title: "Find Friends",
                                description: "See where others are and join the group")
            }
            .padding(.horizontal, 40)
            Spacer()
            Button{
                withAnimation{
                ShowHome.toggle()
                }
               print("reds")
            } label: {
                Text("Starte")
                    .bold()
                    .font(.title3)
                    .frame(width: 330, height: 50)
                    .foregroundColor(.white)
                    .background(Color.essentialColor)
                    .cornerRadius(25)
            }
          
        }
       
    }
}

