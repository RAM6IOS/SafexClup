//
//   ProfileView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI

struct ProfileView: View {
    @State var firstname :String = ""
    @State var lastname : String = ""
    @State var companyname : String = ""
    @State var bio : String = ""
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .frame(height: 130)
                        .foregroundColor(Color(.secondarySystemBackground))
                        .padding(.horizontal)
                HStack(spacing: 16){
                    ZStack{
                    Image( "default-avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height:90)
                        .clipShape(Circle())
                        .padding(.vertical, 8)
                    }
                    .padding(.leading , 12)
                
                VStack{
                    TextField("FirstName" , text: $firstname)
                        .font(.system(size: 32 , weight: .bold))
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                    TextField("LastName" , text: $lastname)
                        .font(.system(size: 32 , weight: .bold))
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                    TextField("Company Name" , text: $companyname)
                }
                .padding(.trailing , 16)
                }
                .padding()
                }
                VStack(alignment: .leading, spacing: 8){
                    Text("Bio: ")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    +
                    Text("100")
                        .bold()
                        .font(.callout)
                        .foregroundColor(.essentialColor)
                    +
                    Text(" Characters Remain")
                        .font(.callout)
                        .foregroundColor(.secondary)
                    
                    TextEditor(text: $bio)
                        .frame( height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary , lineWidth:1))
                }
                .padding(.horizontal , 20)
                Spacer()
                Button{
                    
                } label: {
                    Text("Create Profile")
                        .bold()
                        .frame(width: 340, height: 50)
                        .background(Color.essentialColor)
                        .foregroundColor(Color.white)
                        .cornerRadius(25)
                }
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
