//
//  lilRectangle.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import SwiftUI

struct lilRectangle:View{
    var number: Int
    var title: String
    var body: some View{
        ZStack{
            Rectangle().fill(.white).cornerRadius(10).shadow(radius: 10).frame(width:81,height:56).padding(.leading,20)
            VStack{
                Text(String(number)).font(.system(size:14)).zIndex(1).fontWeight(.medium).foregroundStyle(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue2, CustomColors.newBlue]), startPoint: .leading, endPoint: .trailing))
                Text(title).foregroundColor(.black).font(.system(size:12))
            }.padding(.leading, 20)
            
        }
    }
}
struct lilRectangle_Previews: PreviewProvider{
    static var previews: some View{
        lilRectangle(number: 178, title: "Height")
    }
}
