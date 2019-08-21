//
//  LandmarkDetails.swift
//  LandmarkRows
//
//  Created by Jesús Calderón on 21/08/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(x: 0, y: -110)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.category)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.quirk)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
