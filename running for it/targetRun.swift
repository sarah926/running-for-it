//
//  targetRun.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct targetRun: View {
    @State var user: UserInformation
    @State var b = beginnerPlan()
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(CustomColors.newBlue2).opacity(0.4)
                .frame(width: 315, height: 162).cornerRadius(22)
            VStack{
                HStack{
                    Text("Todays Target").foregroundColor(CustomColors.black).font(.system(size:14)).fontWeight(.medium).padding(.leading, 10).padding(.top, 30)
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Intervals").foregroundColor(CustomColors.darkGray).font(.system(size:12))
                        lilRectangle2(number:Double( b.repeats[user.workoutsCompleted]))
                    }
                    Spacer()
                    VStack{
                        Text("Run Interval").foregroundColor(CustomColors.darkGray).font(.system(size:12))
                        lilRectangle2(number: b.runTimes[user.workoutsCompleted])
                    }
                    Spacer()
                    VStack{
                        Text("Time").foregroundColor(CustomColors.darkGray).font(.system(size:12))
                        lilRectangle2(number: b.totalTimes[user.workoutsCompleted])
                    }
                    Spacer()
                }.padding(.bottom, 40)
            }.frame(width: 315, height: 162)
        }
    }
}

struct targetRun_Previews: PreviewProvider {
    static var previews: some View {
        targetRun(user: UserInformation(firstname: "sarah", lastname: "toll", level: "beginner", workoutsCompleted: 3, timeRan: 30, timeWorkedOut: 50))
    }
}

