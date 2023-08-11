//
//  WorkoutSummary.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-10.
//

import SwiftUI

struct WorkoutSummary: View {
    @State var times: TimesUserSelected
    @State var intervals: Int
    
    let columns = [GridItem(.flexible(),spacing:0 ),GridItem(.flexible(),spacing:0),GridItem(.flexible(),spacing:0),GridItem(.flexible(),spacing:0)]
    var body: some View {
        VStack{
            HStack{
                NavigationLink(destination: Countdown(times:times, repeats: intervals)){
                    RoundedButton(title: "Continue", color: .blue)
                }
                Spacer()
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title: "Edit", color: .blue).frame(width:120)
                }
                
            }
            Image("iTunesArtwork").resizable().frame(width: 150, height: 150)
            Text("Your Workout Summary:").font(.system(size:33)).bold().multilineTextAlignment(.center).foregroundColor(.mint)
            //Spacer()
            ScrollView{
                LazyVGrid(columns: columns, spacing: 15){
                        ForEach((1...intervals), id: \.self){ int in
                            SummarySquare(t: (times.minRunMinutes * 60 + times.minRunSeconds), isRun: true)
                            SummarySquare(t: (times.minWalkMinutes * 60 + times.minWalkSeconds), isRun: false)
                        }
                }
            }
            Spacer()
        }
    }
}

struct WorkoutSummary_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutSummary(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30), intervals: 8)
    }
}
