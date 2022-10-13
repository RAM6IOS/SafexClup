//
//  LocationMapViewModel.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//


import MapKit

final class LocationMapViewModel:NSObject, ObservableObject {
    
    @Published var alertItem: AlertItem?
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.733934,longitude: 3.148216),
                                               span: MKCoordinateSpan(latitudeDelta:0.2, longitudeDelta: 0.2))
    
   
    var deviceLocationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            deviceLocationManager = CLLocationManager()
            deviceLocationManager!.delegate = self
        } else {
            alertItem = AlertContext.locationDisabled
        }
    }
    
    
    private func checkLocationAuthorization() {
        
        guard let deviceLocationManager = deviceLocationManager else { return }
        
        switch deviceLocationManager.authorizationStatus {
            case .notDetermined:
                deviceLocationManager.requestWhenInUseAuthorization()
            case .restricted:
                alertItem = AlertContext.locationRestricted
            case .denied:
                alertItem = AlertContext.locationDenied
            case .authorizedAlways, .authorizedWhenInUse:
                break
            @unknown default:
                break
        }
    }
    
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
extension LocationMapViewModel: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}



