//
//   LocationListView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI

struct LocationListView: View {
    @State private var locations: [LocationModel] = [LocationModel(record: MockData.location)]
    var body: some View {
        NavigationView{
            List{
                ForEach(locations ){ item in
                    NavigationLink(destination: LocationDetail(location: item)) {
                        LocationCell(location: item)
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
