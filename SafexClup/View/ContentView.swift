//
//  ContentView.swift
//  Animations2
//
//  Created by Bouchedoub Rmazi on 2/3/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("ShowHome") var ShowHome : Bool = true
    var body: some View {
        TabView{
            if ShowHome {
                Onboarding(ShowHome: $ShowHome)
            } else{
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
        }
        .accentColor(.essentialColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
