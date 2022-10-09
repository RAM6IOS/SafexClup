//
//  AlertItem.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - MapView Errors
    static let unableToGetLocations = AlertItem(title: "Locations Error",
                                                message: Text("Unable to retrieve locations at this time.\nPlease try again."),
                                                dismissButton: .default(Text("Ok")))
}

