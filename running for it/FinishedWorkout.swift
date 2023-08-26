//
//  FinishedWorkout.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct FinishedWorkout: View {
    var body: some View {
        VStack{
            Image("iTunesArtwork").resizable()
            CustomFont(text: "CONGRATS RUNNER!", size: 75, color: CustomColors.darkBlue)
            Spacer()
            Spacer()
            NavigationLink(destination:ContentView()){
                RoundedButton(title: "Home", color: CustomColors.lightPurple)
            }
        }
    }
}

struct FinishedWorkout_Previews: PreviewProvider {
    static var previews: some View {
        FinishedWorkout()
    }
}
