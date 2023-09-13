//
//  HomePage.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct HomePage: View {
    @State var user: UserInformation
    var b = beginnerPlan()
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
            barGraph(user: user)
            HStack{
                Text("Latest Workouts").font(.system(size:20)).foregroundColor(CustomColors.black).fontWeight(.bold).padding(.leading, 30)
                Spacer()
            }
            /*
            LazyVGrid(columns: [GridItem(.flexible())]){
                ForEach(1...user.workoutsCompleted, id:\.self){ i in
                    Text(String(b.totalTimes[user.workoutsCompleted-i]) + " minutes")
                }
            }
            */
            List{
                if(user.workoutsCompleted > 0){
                    ForEach(1...user.workoutsCompleted, id:\.self){ i in
                        HStack{
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue, CustomColors.newBlue2]), startPoint: .leading, endPoint: .trailing)).frame(width:50).opacity(0.4)
                            
                            VStack{
                                Text("\(b.totalTimes[user.workoutsCompleted-i], specifier: "%.0f") Min Run/Walk").font(.system(size:12)).foregroundColor(CustomColors.darkGray)
                                Text("\(b.runTimes[user.workoutsCompleted-i], specifier: "%0.2f") run x \(b.repeats[user.workoutsCompleted-i]) repeats").font(.system(size:10)).foregroundColor(CustomColors.darkGray)
                            }
                            Spacer()
                            Image("Ellipse 92").frame(width: 24, height: 24)
                        }
                    }
                }
                /*
                if(user.workoutsCompleted > 0){
                    for i in 1...user.workoutsCompleted{
                        Text(beginnerPlan.totalTimes[user.workoutsCompleted-i])
                    }
                }
                 */
               // Text("27 minute walk")
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
