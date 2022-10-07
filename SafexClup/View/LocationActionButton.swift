//
//  LocationActionButton.swift..swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 7/10/2022.
//

import SwiftUI

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .frame(width: 60, height: 60)
            .font(.system(size: 30))
            .background(color)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}
