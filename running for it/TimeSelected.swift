//
//  TimeSelected.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-06.
//

import SwiftUI

struct TimeSelected: View {
    @State var times: TimesUserSelected
    @State var timeMinutes = 10
    @State var timeSeconds = 0
    func calcNumberIntervals()->Int{
        let x = (timeMinutes * 60 + timeSeconds)/(times.minRunMinutes * 60 + times.minRunSeconds + times.minWalkMinutes * 60 + times.minWalkSeconds)
        return x
    }
    var body: some View {
        VStack{
            RectangleView(mins: $timeMinutes, secs: $timeSeconds, choice: "Total Time")
            NavigationLink(destination: WorkoutSummary(times: times, intervals: calcNumberIntervals())){
                //Countdown(times: times, repeats: calcNumberIntervals())
                RoundedButton(title: "Continue", color: .blue).padding(20)
            }
        }.background( Image("runner").resizable().frame(height: 600))
        
    }
}

struct TimeSelected_Previews: PreviewProvider {
    static var previews: some View {
        TimeSelected(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
