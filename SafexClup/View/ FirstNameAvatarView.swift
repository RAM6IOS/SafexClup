//
//   FirstNameAvatarView.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 7/10/2022.
//

import SwiftUI

struct FirstNameAvatarView: View {
    var firstName: String
    var body: some View {
        VStack{
            
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

