//
//  ContentView.swift
//  Landmarks
//
//  Created by Jesús Calderón on 21/08/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
        VStack(alignment: .leading) {
            Text("Izuku Midoriya")
                .font(.title)
            HStack {
                Text("Aspirante a héroe")
                    .font(.subheadline)
                Spacer()
                Text("One for All")
                    .font(.subheadline)
            }
        }
        .padding()
        Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
