//
//  TimeSelected.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-06.
//

import SwiftUI

struct TimeSelected: View {
    @State var timeUserRequestedTotalSeconds = 0
    @State var times: TimesUserSelected
    @State var timeMinutes = 10
    @State var timeSeconds = 0
    func calcNumberIntervals()->Int{
        let x = timeUserRequestedTotalSeconds / (times.minRunSeconds + times.minWalkSeconds)
        return x
    }
    var body: some View {
        VStack{
            RectangleView(mins: $timeMinutes, secs: $timeSeconds, choice: "Total Time")
            NavigationLink(destination: Countdown(times: times)){
                RoundedButton(title: "Continue", color: .blue).padding(20)
            }
        }
        
    }
}

struct TimeSelected_Previews: PreviewProvider {
    static var previews: some View {
        TimeSelected(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
