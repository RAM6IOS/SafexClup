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
    var body: some View {
        ZStack{
            Map(coordinateRegion: $viewModel.region)
                .ignoresSafeArea(edges: [.top])
        }
        //MARK: - If you need to support iOS 14 and 13
        //.alert(item: $alertItem, content: { alertItem in
         //  Alert(title: Text(alertItem.title), message: alertItem.message, dismissButton: alertItem.dismissButton)
        //})
        .alert(
            viewModel.alertItem?.title ?? "title", isPresented: $viewModel.didError) {
                    Button{
                        viewModel.didError = false
                    } label: {
                      Text("Ok") }
                } message: {
                    viewModel.alertItem?.message
                }
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
