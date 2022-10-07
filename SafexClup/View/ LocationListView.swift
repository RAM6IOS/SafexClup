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
                       LocationCell()
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
