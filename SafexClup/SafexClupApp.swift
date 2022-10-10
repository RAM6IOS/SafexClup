//
//  Animations2App.swift
//  Animations2
//
//  Created by Bouchedoub Rmazi on 2/3/2022.
//

import SwiftUI

@main
struct SafexClupApp: App {
    let locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
        }
    }
}
