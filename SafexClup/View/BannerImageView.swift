//
//  BannerImageView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 7/10/2022.
//

import SwiftUI

struct BannerImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
    }


