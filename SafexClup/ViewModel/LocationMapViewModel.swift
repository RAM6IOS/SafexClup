//
//  LocationMapViewModel.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//

import Foundation
import MapKit

final class LocationMapViewModel: ObservableObject {
    @Published var didError = false
    @Published var alertItem: AlertItem?
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.733934,longitude: 3.148216),
 span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1))
    
    @Published var locations: [LocationModel] = []
    
    func getLocations() {
        CloudKitManager.getLocations { [self] result in
            switch result {
                case .success(let locations):
                    self.locations = locations
                case .failure(_):
                    alertItem = AlertContext.unableToGetLocations
                   didError = true
            }
        }
    }
}

