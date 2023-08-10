//
//  IntervalsSelected.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-09.
//

import SwiftUI

struct IntervalsSelected: View {
    @State var times: TimesUserSelected
    @State var intervals = 0
    var body: some View {
        VStack{
            Text("how many intervals you want?")
            //Text(intervals).bold().font(.system(size:20)).multilineTextAlignment(.center).zIndex((1))
            HStack{
                Text("Intervals:                    ").bold().offset(x:20
                ).padding(10)
                Stepper("\(self.intervals)", value: self.$intervals, in: 0...59).offset(x:-30)
            }
            NavigationLink(destination: Countdown(times: times)){
                RoundedButton(title: "Select", color: .blue).padding(20)
            }
        }
    }
}

struct IntervalsSelected_Previews: PreviewProvider {
    static var previews: some View {
        IntervalsSelected(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
