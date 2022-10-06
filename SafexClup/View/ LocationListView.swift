//
//   LocationListView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(1..<10){ item in
                    NavigationLink(destination: LocationDetail()) {
                        HStack{
                        Image("SAFEX")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical, 8)
                        VStack(alignment: .leading ){
                            Text("Test Location Name")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            HStack{
                            ForEach(1..<5){ items in
                                Image("default-avatar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                            }
                          }
                        }
                      }
                    }
               }
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
     }
 }

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
