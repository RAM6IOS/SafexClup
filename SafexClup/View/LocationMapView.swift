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
    var body: some View {
        ZStack{
            Map(coordinateRegion: $viewModel.region)
                .ignoresSafeArea(edges: [.top])
        }
        //MARK: - If you need to support iOS 14 and 13
        //.alert(item: $viewModel.alertItem, content: { alertItem in
          // Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        //})
        
        .onAppear {
            viewModel.getLocations()
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
