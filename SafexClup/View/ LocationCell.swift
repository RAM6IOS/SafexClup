//
//   LocationCell.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 7/10/2022.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        HStack{
        Image("SAFEX")
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .padding(.vertical, 8)
        VStack(alignment: .leading ){
            Text("Test Location Name")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(1)
                .minimumScaleFactor(0.75)
            HStack{
            ForEach(1..<5){ items in
                Image("default-avatar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
          }
        }
      }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell()
    }
}
