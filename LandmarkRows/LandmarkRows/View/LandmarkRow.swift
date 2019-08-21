//
//  LandmarkRow.swift
//  LandmarkRows
//
//  Created by Jesús Calderón on 21/08/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//


import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
