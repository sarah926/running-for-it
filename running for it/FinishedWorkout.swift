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
            Spacer(minLength:20)
            Image("Groupcongrats").resizable().frame(width:255, height:327)
            Spacer()
            Spacer()
            Text("Congratulations, You Have\nFinished Your Workout").font(.system(size:20))
                .multilineTextAlignment(.center).fontWeight(.bold)
            Spacer()
            Text("Running is the greatest metaphor for life, because\nyou get out of it what you put into it.").multilineTextAlignment(.center).font(.system(size:12)).foregroundColor(CustomColors.darkGray)
            Spacer()
            Text("- Oprah Winfrey").multilineTextAlignment(.center).font(.system(size:12)).foregroundColor(CustomColors.darkGray)
            NavigationLink(destination:ContentView()){
                gradient(text: "Back To Home", color1: CustomColors.newBlue2, color2: CustomColors.newBlue)
            }
        }
    }
}

struct FinishedWorkout_Previews: PreviewProvider {
    static var previews: some View {
        FinishedWorkout()
    }
}
