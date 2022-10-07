//
//  LocationDetail.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI
struct LocationDetail: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
            
        ]
    var body: some View {
            VStack(spacing: 16){
                Image("chipotle-banner")
                    .resizable()
                    .scaledToFit()
                    .frame( height: 120)
                HStack{
                    Label("123 Main Street", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.horizontal)
                
                Text("It s Chipotle . Enough said")
                    .font(
                        .title3
                            .weight(.semibold)
                    )
                    .padding(.horizontal)

                ZStack{
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    HStack( spacing: 20){
                        Button{
                            
                        }label: {
                            LocationActionButton(color:.essentialColor, imageName: "location.fill")
                        }
                        Button{
                            
                        }label: {
                            LocationActionButton(color:.essentialColor, imageName: "network")
                        }
                        Button{
                            
                        }label: {
                            LocationActionButton(color:.essentialColor, imageName: "phone.fill")
                        }
                        Button{
                        }label: {
                            LocationActionButton(color:.subColor, imageName: "person.fill.checkmark")
                        }
                    }
                    .padding(.vertical)
                }
                
                Text("Who s Here?")
                    .font(
                        .title2
                            .weight(.bold)
                    )
                ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(1..<8){ items in
                        VStack{
                            
                            Image("default-avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            Text("Name")
                                .bold()
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                        }
                    }
                }
                }
            }
            .navigationTitle("chipotle")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button{
                    } label: {
                        Text("Dismiss")
                    }
            )
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        LocationDetail()
        }
    }
}
