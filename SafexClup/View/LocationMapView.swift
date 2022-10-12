//
//  LocationMapView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @StateObject private var viewModel = LocationMapViewModel()
    @EnvironmentObject private var locationManager : LocationManager
    let locations = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 36.713934, longitude: 3.148216)),
        Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude:36.733934, longitude: 3.148216))
    ]
    var body: some View {
        ZStack{
           // Map(coordinateRegion: $viewModel.region)
               
            Map(coordinateRegion: $viewModel.region, annotationItems: locations) { location in
                MapMarker(coordinate: location.coordinate , tint: Color.essentialColor)
            }
            .ignoresSafeArea(edges: [.top])
        }
        //MARK: - If you need to support iOS 14 and 13
        //.alert(item: $viewModel.alertItem, content: { alertItem in
          // Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        //})
        .onAppear {
            if locationManager.loactions.isEmpty {
            viewModel.getLocations(for: locationManager)
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
