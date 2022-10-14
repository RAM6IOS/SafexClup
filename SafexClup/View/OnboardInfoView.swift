//
//  OnboardInfoView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 14/10/2022.
//

import SwiftUI

struct OnboardInfoView: View {
    var imageName: String
    var title: String
    var description: String
    var body: some View {
        HStack(spacing: 26) {
            Image(systemName: imageName )
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.essentialColor)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title).bold()
                Text(description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}

