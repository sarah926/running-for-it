//
//  RectangleViewVersion2.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct RectangleViewVersion2: View {
    @Binding var minMins:Int
    @Binding var minSecs:Int
    @Binding var maxMins:Int
    @Binding var maxSecs:Int
    var backColor: Color
    var textColor: Color
    var body: some View{
        VStack (spacing:0){
            HStack{
                Text("Minimum:").font(.custom("Arial", size:33)).foregroundColor(textColor).bold().padding(20)
                Spacer()
                TextField("00", text: Binding(
                    get: { String(format: "%02d", minMins)
                    },
                    set: { minMins = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkerBlue).multilineTextAlignment(.center).bold()
                Text(":").font(.custom("Arial", size:33)).foregroundColor(textColor).bold()
                TextField("00", text: Binding(
                    get: { String(format: "%02d",minSecs) },
                    set: { minSecs = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkerBlue).multilineTextAlignment(.center).bold()
                Spacer()
            }
            HStack{
                Text("Maximum:").font(.custom("Arial", size:33)).foregroundColor(textColor).bold().padding(20)
                Spacer()
                TextField("00", text: Binding(
                    get: { String(format: "%02d", maxMins)
                    },
                    set: { maxMins = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkerBlue).multilineTextAlignment(.center).bold()
                Text(":").font(.custom("Arial", size:33)).foregroundColor(textColor).bold()
                TextField("00", text: Binding(
                    get: { String(format: "%02d",maxSecs) },
                    set: { maxSecs = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkerBlue).multilineTextAlignment(.center).bold()
                Spacer()
            }
        
        }
        .frame(height:175)
        .background(backColor)
        .cornerRadius(30)
        .padding(10)
        //.frame(width: 350, height:300)
    }
}

struct RectangleViewVersion2_Previews: PreviewProvider {
    static var previews: some View {
        RectangleViewVersion2(minMins: .constant(1), minSecs: .constant(3), maxMins: .constant(1), maxSecs:.constant(2),backColor: CustomColors.darkBlue, textColor: .white)
    }
}
