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
           Spacer()
            CustomFont(text:"MEASURE YOUR RUN BY:", size:60, color: CustomColors.darkBlue)
            //Text("MEASURE YOUR RUN BY:").bold().frame(maxWidth: .infinity).foregroundColor(.blue).font(.custom("Arial", size:45)).cornerRadius(10).padding(20).multilineTextAlignment(.center)
           
            NavigationLink(destination: TimeSelected(times: times)){
                RoundedButton(title:"Total Workout Time", color: .mint)
                              //red:48/255, green: 149/255, blue: 227/255)
            }
            NavigationLink(destination: IntervalsSelected(times: times)){
                RoundedButton(title: "Amount of Intervals", color: .mint)
                                //Color(red:57/255, green: 201/255, blue: 237/255))
            }
            NavigationLink(destination: DistanceSelected(times: times)){
                RoundedButton(title: "Distance", color:.mint)
                                //Color(red:117/255, green: 209/255, blue: 255/255))
            }
            Spacer()
        }
        //.background( Image("runner").resizable().frame(height: 600))
    }
}

struct Choose_Type_Previews: PreviewProvider {
    static var previews: some View {
        Choose_Type(choice: 1, times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
