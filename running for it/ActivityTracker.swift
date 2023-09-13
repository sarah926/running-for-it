//
//  ActivityTracker.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-29.
//

import SwiftUI

struct ActivityTracker: View {
    @State var user: UserInformation
    @State var b = beginnerPlan()
    func checkVaries()->Bool{
        if(b.secondRunTimes[user.timeWorkedOut] >= 0){
            return true
        }
        return false
    }
    var body: some View {
        VStack{
            Text("Activity Tracker").font(.system(size:16)).fontWeight(.bold)
            //Spacer()
            targetRun(user: user)
            Spacer()
            
            NavigationLink(destination: Countdown(times: singleWorkout(firstRunMinutes: b.runTimes[user.timeWorkedOut], runTimeVaries: checkVaries(), secondRunMinutes: b.secondRunTimes[user.timeWorkedOut], walkMinutes: b.walkTimes[user.timeWorkedOut], repeats: b.repeats[user.timeWorkedOut]))){
                    gradient(text: "Start My Run", color1: CustomColors.newBlue2, color2: CustomColors.newBlue).frame(width:315)
            }
            Spacer()
            HStack{
                Text("Activity Progress").font(.system(size:16)).fontWeight(.semibold).padding(.leading, 30)
                Spacer()
            }
            barGraph(user: user)
            Spacer()
            navBar(user: user, page: 1)
        }
    }
}

struct ActivityTracker_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTracker(user: UserInformation(firstname: "Sarah", lastname: "Toll", level: "beginner", workoutsCompleted: 2, timeRan: 20, timeWorkedOut: 30))
    }
}
