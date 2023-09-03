//
//  HomePage.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct HomePage: View {
    @State var user: UserInformation
    var body: some View {
        VStack{
            HStack{
                Text("Welcome Back,").font(.system(size:12)).foregroundColor(CustomColors.darkGray).padding(.leading, 30).fontWeight(.medium)
                Spacer()
            }
            HStack{
                Text(user.firstname + " " + user.lastname).font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            HStack{
                Text(user.level).font(.system(size:12)).foregroundColor(CustomColors.darkGray).fontWeight(.medium).padding(.leading, 30)
                Spacer()
            }
            Divider()
            //Spacer()
            targetRun(user: user)
            HStack{
                Text("Workout Progress").font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            barGraph()
            HStack{
                Text("Latest Workouts").font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            List{
                Text("27 minute walk")
            }
            navBar(user: user, page: 0)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(user: UserInformation(firstname: "Sarah", lastname: "toll", level: "Beginner", workoutsCompleted: 3, timeRan: 20, timeWorkedOut: 30))
    }
}
