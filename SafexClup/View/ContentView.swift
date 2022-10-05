//
//  ContentView.swift
//  Animations2
//
//  Created by Bouchedoub Rmazi on 2/3/2022.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        TabView{
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem{
                    Label("Locations" , systemImage: "building")
                }
            ProfileView()
                .tabItem{
                    Label("Profile" , systemImage: "person")
                }
        }
        .accentColor(.essentialColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
