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
    @State private var alertItem: AlertItem?
    @State var didError = false
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea(edges: [.top])
        }
        //MARK: - If you need to support iOS 14 and 13
        //.alert(item: $alertItem, content: { alertItem in
         //  Alert(title: Text(alertItem.title), message: alertItem.message, dismissButton: alertItem.dismissButton)
        //})
        .alert(
            alertItem?.title ?? "title", isPresented: $didError) {
                    Button{
                        didError = false
                    } label: {
                      Text("Ok") }
                } message: {
                    alertItem?.message
                }
        .onAppear {
            CloudKitManager.getLocations { result in
                switch result {
                    case .success(let locations):
                        print(locations)
                    case .failure(_):
           alertItem = AlertContext.unableToGetLocations
                    didError = true
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
