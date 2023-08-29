//
//  RectangleVersion3.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct RectangleVersion3: View {
    @Binding var minMins:Int
    @Binding var minSecs:Int
    @State var autoIncrement = true
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
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkMint).multilineTextAlignment(.center).bold()
                Text(":").font(.custom("Arial", size:33)).foregroundColor(textColor).bold()
                TextField("00", text: Binding(
                    get: { String(format: "%02d", minSecs) },
                    set: { minSecs = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Arial", size:33)).background(CustomColors.darkMint).multilineTextAlignment(.center).bold()
                Spacer()
            }
            Toggle("Autoincrement", isOn: $autoIncrement).toggleStyle(.switch).foregroundColor(.white).font(.custom("Arial", size:25)).padding(20).tint(.gray)
        }
        .frame(height:175)
        .background(backColor)
        .cornerRadius(30)
        .padding(10)
        //.frame(width: 350, height:300)
    }

}

struct RectangleVersion3_Previews: PreviewProvider {
    static var previews: some View {
        RectangleVersion3(minMins: .constant(1), minSecs: .constant(2),  backColor: CustomColors.mint, textColor: .white)
    }
}
