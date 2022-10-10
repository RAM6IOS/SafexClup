//
//  LocationMapViewModel.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//


import MapKit

final class LocationMapViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.733934,longitude: 3.148216),
                                               span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1))
    
   
    
    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocations { [self] result in
            DispatchQueue.main.async {
                switch result {
                    case .success(let locations):
                    locationManager.loactions = locations
                    case .failure(_):
                        alertItem = AlertContext.unableToGetLocations
                }
            }
        }
    }
}


