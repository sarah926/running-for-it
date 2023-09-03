//
//  Welcome.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct Welcome: View {
    @State var user: UserInformation
    var body: some View {
        VStack{
            Image("Group6").frame(width: 277, height: 303)
            Text("Welcome, " + user.firstname).font(.system(size:20)).fontWeight(.bold)
            Text("You are all set, let’s reach your\nrunning goals together")
                .font(.system(size: 12))
                .multilineTextAlignment(.center).foregroundColor(CustomColors.darkGray)
            Spacer()
            NavigationLink(destination: HomePage(user: user)){
                gradient(text: "Go To Home", color1: CustomColors.newBlue2, color2: CustomColors.newBlue)
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome(user: UserInformation(firstname: "Sarah", lastname: "Toll",level: "beginner", workoutsCompleted: 2, timeRan: 5, timeWorkedOut: 30))
    }
}
