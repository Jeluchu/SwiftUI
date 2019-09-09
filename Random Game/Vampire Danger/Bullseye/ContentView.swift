//
//  ContentView.swift
//  Bullseye
//
//  Created by Jesús Calderón on 09/09/2019.
//  Copyright © 2019 Jeluchu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    
    var body: some View {
        VStack{
            
            Spacer()
            
            HStack{
                Text("The World is a Vampire!, Danger: ")
                Text("\(target)")
            }
            Spacer()
            
            HStack{
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            Spacer()
            
            Button(action: {
                print("You're a vampire")
                self.alertIsVisible = true
            }) {
                Text("Say Vampire")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Bloooood!"), message: Text(
                    "You're a vampire now of level is \(sliderValueRounded())\n" +
                    "You're score is \(pointsForCurrentRound()) add on rank"), dismissButton: .default(Text("Sugoi!")))
            }
            Spacer()
            
            HStack{
                Button(action: {}) {
                    Text("Search Vampires")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    
    func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
    }
    
    func pointsForCurrentRound() -> Int {
        100 - abs(target - sliderValueRounded())
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}

