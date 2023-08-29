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
                Text(user.name).font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            HStack{
                Text(user.level).font(.system(size:12)).foregroundColor(CustomColors.darkGray).fontWeight(.medium).padding(.leading, 30)
                Spacer()
            }
            Divider()
            //Spacer()
            targetRun()
            HStack{
                Text("Workout Progress").font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            barGraph()
            HStack{
                Text("Latest Workouts").font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                
            }
            ZStack{
                Rectangle().foregroundColor(CustomColors.newBlue2).opacity(0.4)
                    .frame(width: 315, height: 162).cornerRadius(22)
            }
            HStack{
                Spacer()
                Image("Home")
                Spacer()
                Image("Activity").resizable().frame(width:40,height:40).background(Rectangle().fill(CustomColors.newBlue2).frame(width:40,height:40).cornerRadius(10))
                Spacer()
                Image("Profile")
                Spacer()
            }.frame(width: 375, height: 50)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(user: UserInformation(name: "Sarah", level: "Beginner", workoutsCompleted: 3, timeRan: 20, timeWorkedOut: 30))
    }
}
