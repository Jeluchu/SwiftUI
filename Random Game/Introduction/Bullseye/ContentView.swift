//
//  ContentView.swift
//  Bullseye
//
//  Created by Jesús Calderón on 09/09/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var whosThereIsVisible: Bool = false
    
    var body: some View {
        VStack{
            Text("The World is a Vampire!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("You're a vampire")
                self.alertIsVisible = true
            }) {
                Text("Say Vampire")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
            return Alert(title: Text("Bloooood!"), message: Text("You're a vampire now"), dismissButton: .default(Text("Sugoi!")))
            }
            Button(action: {
                self.whosThereIsVisible = true
            }) {
                Text("Knock, Knock!")
            }
            .alert(isPresented: $whosThereIsVisible) { () -> Alert in
            return Alert(title: Text("Is a Vampire here?"), message: Text("OWWWWWW ·^·"), dismissButton: .default(Text("Nice!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

