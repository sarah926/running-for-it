//
//  RectangleView.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-06.
//

import SwiftUI

struct RectangleView: View {
    @Binding var mins:Int
    @Binding var secs:Int
    var choice: String
    var body: some View{
        VStack {
            Text(choice).bold().font(.system(size:20)).multilineTextAlignment(.center).zIndex((1)).offset(y:20)
            Spacer()
            HStack{
                Text("MINUTES:                    ").bold().offset(x:20
                ).padding(10)
                Stepper("\(self.mins)", value: self.$mins, in: 0...59).offset(x:-30)
            }
            HStack{
                Text("SECONDS:                  ").bold().offset(x:20).padding(10)
                Stepper("\(self.secs)", value: self.$secs, in: 0...60, step: 10).offset(x:-30)
            }
            Spacer()
        }
        .background(.mint)
        .cornerRadius(20)
        .padding(10)
        .frame(width: 350, height:200)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(mins:.constant(0), secs:.constant(1), choice:"min")
    }
}
