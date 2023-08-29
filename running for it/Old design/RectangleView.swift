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
    var backColor: Color
    var textColor: Color
    var body: some View{
        
        VStack {
            Spacer()
            
            HStack{
                Text("MINUTES:").bold().offset(x:20
                ).foregroundColor(textColor).font(.custom("Arial", size:25))
                Spacer().frame(width:70)
                Stepper("\(self.mins)", value: self.$mins, in: 0...59).offset(x:-30).foregroundColor(textColor).font(.custom("Arial", size:25))
            } 
            HStack{
                Text("SECONDS:                ").bold().offset(x:20).foregroundColor(textColor).font(.custom("Arial", size:25))
                Spacer().frame(width:50)
                Stepper("\(self.secs)", value: self.$secs, in: 0...60, step: 10).offset(x:-30).foregroundColor(textColor).font(.custom("Arial", size:25))
            }
            Spacer()
        }
        .background(backColor)
        .cornerRadius(30)
        .padding(10)
        .frame(width: 350, height:150)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(mins:.constant(0), secs:.constant(1), backColor: .blue, textColor: .white)
    }
}
