//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jesús Calderón on 21/08/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("midoriya")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
