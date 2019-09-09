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
    @State var score = 0
    @State var round = 1
    
    var body: some View {
        VStack{
            
            Spacer()
            
            HStack{
                Text("The World is a Vampire!, Danger: ")
                    .colorInvert()
                Text("\(target)").modifier(ValueStyle())
            }
            Spacer()
            
            HStack{
                Text("1")
                    .colorInvert()
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
                    .colorInvert()
            }
            Spacer()
            
            Button(action: {
                print("You're a vampire")
                self.alertIsVisible = true
            }) {
                Text("Vampire")
                    .foregroundColor(Color.black)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text(alertTitle()), message: Text(
                    "You're a vampire now of level is \(sliderValueRounded())\n" +
                    "You're score is \(pointsForCurrentRound()) add on rank"), dismissButton: .default(Text("Sugoi!")) {
                        self.score = self.score + self.pointsForCurrentRound()
                        self.target = Int.random(in: 1...100)
                        self.round = self.round + 1
                    } )
            }
            .background(Image("Button"))
            Spacer()
            
            HStack{
                Button(action: {
                    self.startNewGame()
                }) {
                    Text("Search New Vampires")
                        .colorInvert()
                }
                Spacer()
                Text("Score:")
                    .colorInvert()
                Text("\(score)").modifier(ValueStyle())
                Spacer()
                Text("Round:")
                    .colorInvert()
                Text("\(round)").modifier(ValueStyle())
                Spacer()
                NavigationLink(destination: AboutView()) {
                    Text("Info")
                    .colorInvert()
                }
            }
            .padding(.bottom, 20)
        }
        .background(Image("Background"), alignment:  .center)
        .navigationBarTitle("Vampire World")
    }
    
    func sliderValueRounded() -> Int {
        Int(sliderValue.rounded())
    }
    
    func amountOff() -> Int {
        abs(target - sliderValueRounded())
    }
    
    func pointsForCurrentRound() -> Int {
        let maximunScore = 100
        let difference = amountOff()
        let bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference == 1 {
            bonus = 50
        } else {
            bonus = 0
        }
        return maximunScore - difference + bonus
    }
    
    func alertTitle() -> String {
        let difference = amountOff()
        let title: String
        if difference == 0 {
            title = "Blooood!"
        } else if difference < 5 {
            title = "Nice Blood!"
        } else if difference <= 10 {
            title = "Mmmm Blood..."
        } else {
            title = "You aren't a Vampire!"
        }
        return title
    }
    
    func startNewGame () {
        score = 0
        round = 1
        sliderValue = 50.0
        target = Int.random(in: 1...10)
    }
    
}

struct ValueStyle: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .foregroundColor(Color.yellow)
            .font(Font.custom("Arial Rounded MT Bold", size: 24))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}

