//
//  RectangleViewVersion2.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct RectangleViewVersion2: View {
    @Binding var mins:Int
    @Binding var secs:Int
    var backColor: Color
    var textColor: Color
    var body: some View{
        VStack {
            HStack{
                Spacer()
                CustomFont(text:"MINIMUM:", size:30,color: textColor)
                //Text("MINIMUM:")
                Spacer()
                TextField("00", text: Binding(
                    get: { String(format: "%02d", mins)
                    },
                    set: { mins = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Impact", size:30)).background(.black)
                CustomFont(text: ":", size: 30, color: textColor)
                Spacer()
                TextField("50", text: Binding(
                    get: { String(secs) },
                    set: { secs = Int($0) ?? 0 }
                )).frame(width:50).foregroundColor(textColor).font(.custom("Impact", size:30))
                Spacer()
            }
        
        }
        .frame(minHeight:100)
        .background(backColor)
        .cornerRadius(30)
        .padding(10)
        //.frame(width: 350, height:300)
    }
}

struct RectangleViewVersion2_Previews: PreviewProvider {
    static var previews: some View {
        RectangleViewVersion2( mins: .constant(1), secs:.constant(2),backColor: .mint, textColor: .white)
    }
}
