//
//  barGraph.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI
import Charts
struct ValuePerCategory {
    var category: String
    var value: Double
}
struct barGraph: View {
    @State var user: UserInformation
    //var b = beginnerPlan()
    //data.append(.init(String))
    
    @State var data: [ValuePerCategory] = [
        .init(category: String(1), value: beginnerPlan().totalTimes[0]),
        .init(category: String(2), value: beginnerPlan().totalTimes[1]),
        .init(category: String(3), value: beginnerPlan().totalTimes[2]),
        .init(category: String(4), value: beginnerPlan().totalTimes[3]),
        //.init(category: String(5), value: beginnerPlan().totalTimes[4]),
    ]
    func updateData() -> [ValuePerCategory]{
        data.append(ValuePerCategory(category: String(5), value: 25))
        return data
    }
    var body: some View {
        //updateData()
        VStack{
            Chart(updateData(), id: \.category) { item in
                BarMark(
                    x: .value("Category", item.category),
                    y: .value("Data", item.value)
                ).cornerRadius(5)
            }
            .frame(width:315,height: 200)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue2, CustomColors.newBlue]), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct barGraph_Previews: PreviewProvider {
    static var previews: some View {
        barGraph(user: UserInformation(firstname: "Sarah", lastname: "toll", level: "Beginner", workoutsCompleted: 3, timeRan: 20, timeWorkedOut: 30))
    }
}
