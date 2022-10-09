//
//  LocationMapView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 5/10/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.733934,longitude: 3.148216),
  span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1))
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea(edges: [.top])
        }
        .onAppear {
            CloudKitManager.getLocations { result in
                switch result {
                    case .success(let locations):
                        print(locations)
                    case .failure(let error):
                        print(error)
                }
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
