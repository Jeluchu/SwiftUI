//
//  AboutView.swift
//  Bullseye
//
//  Created by Jesús Calderón on 09/09/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("🧛‍♂️ The World is a Vampire 🧛‍♂️")
            Text("You're a vampire, the game is simple, you can win points and earn fame by dragging a slider")
            Text("Your goal is to place the slider as close as possible to the target value, The closer you are, the more points you score")
            Text("Enjoy · The World is a Vampire")
        }
    .navigationBarTitle("About Vampires")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
