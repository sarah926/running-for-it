//
//  navBar.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import SwiftUI

struct navBar: View {
    @State var user: UserInformation
    //page 0 is home, page 1 is activity, page 2 is profile
    @State var page: Int
    var body: some View {
        HStack{
            Spacer()
            NavigationLink(destination: HomePage(user: user)){
                if(page == 0){
                    Image("Home-Active").offset(y:4)
                }else{
                    Image("Home")
                }
            }
            Spacer()
            NavigationLink(destination: ActivityTracker(user: user)){
                if(page == 1){
                    Image("Activity").resizable().frame(width:40,height:40).background(Rectangle().fill(LinearGradient(gradient: Gradient(colors: [CustomColors.darkPink, CustomColors.lightPink]), startPoint: .leading, endPoint: .trailing))).frame(width:40,height:40).cornerRadius(10).opacity(0.6)
                }else{
                    Image("Activity").resizable().frame(width:40,height:40)
                }
            }
            Spacer()
            NavigationLink(destination: ProfilePage(user: user)){
                if(page == 2){
                    Image("Profile-Active").offset(y:4)
                }else{
                    Image("Profile")
                }
            }
            Spacer()
        }.frame(width: 375, height: 50)
    }
}

struct navBar_Previews: PreviewProvider {
    static var previews: some View {
        navBar(user: UserInformation(firstname: "sarh", lastname: "tall", level: "beginner", workoutsCompleted: 2, timeRan: 30, timeWorkedOut: 40), page: 1)
    }
}
