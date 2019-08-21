//
//  LandmarkList.swift
//  LandmarkRows
//
//  Created by Jesús Calderón on 21/08/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
        List (landmarkData) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationBarTitle("Héroes")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
