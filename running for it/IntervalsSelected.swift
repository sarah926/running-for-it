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
            Spacer()
            CustomFont(text: "INTERVALS", size:75,color: CustomColors.darkBlue)
            //Text("How many running intervals do you want?").bold().frame(height: 75).font(.system(size:20)).cornerRadius(10).padding(20).multilineTextAlignment(.center)
            //Text(intervals).bold().font(.system(size:20)).multilineTextAlignment(.center).zIndex((1))
            HStack{
                Spacer(minLength:170)
                Stepper("\(self.intervals)", value: self.$intervals, in: 0...59).offset(x:-30).font(.custom("Arial", size:50)).foregroundColor(.white)
            }.background(Rectangle().fill(Color.mint).cornerRadius(30).frame(width: 350, height:150)).padding(30).foregroundColor(.white)
            Spacer()
            NavigationLink(destination: WorkoutSummary(times: times,intervals:intervals)){
                RoundedButton(title: "Select", color: CustomColors.lightPurple)
            }
        }
        //.background( Image("runner").resizable().frame(height: 600))
    }
}

struct IntervalsSelected_Previews: PreviewProvider {
    static var previews: some View {
        IntervalsSelected(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
