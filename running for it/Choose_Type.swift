//
//  Choose_Type.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-01.
//

import SwiftUI

struct Choose_Type: View {
    @State var choice = 0
    @State var times: TimesUserSelected
    var body: some View {
        VStack{
            Text("Measure Run By:").bold()
            NavigationLink(destination: TimeSelected(times: times)){
                RoundedButton(title:"Total Workout Time", color: .purple).padding(10)
            }
            NavigationLink(destination: IntervalsSelected(times: times)){
                RoundedButton(title: "Amount of Intervals", color: .pink).padding(10)
            }
            NavigationLink(destination: SelectIntervalTime()){
                RoundedButton(title: "Distance", color: .blue).padding(10)
            }
        }
    }
}

struct Choose_Type_Previews: PreviewProvider {
    static var previews: some View {
        Choose_Type(choice: 1, times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
