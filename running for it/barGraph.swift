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
    let data: [ValuePerCategory] = [
        .init(category: "MON", value: 5),
        .init(category: "TUES",value: 10),
        .init(category: "WED", value: 20),
        .init(category: "THUR", value: 20),
        .init(category: "FRI", value: 30),
        .init(category: "SAT", value: 2),
        .init(category: "SUN", value: 40)
    ]
    
    var body: some View {
        VStack{
            Chart(data, id: \.category) { item in
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
        barGraph()
    }
}
