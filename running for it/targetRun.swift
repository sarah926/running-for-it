//
//  targetRun.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct targetRun: View {
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
                    lilRectangle(number: 5, title: "Run Time")
                    lilRectangle(number: 5, title: "Intervals")
                    lilRectangle(number: 5, title: "Time").padding(.trailing, 20)
                }.padding(.bottom, 40)
            }.frame(width: 315, height: 162)
        }
    }
}

struct targetRun_Previews: PreviewProvider {
    static var previews: some View {
        targetRun()
    }
}
