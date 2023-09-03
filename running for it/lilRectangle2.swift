//
//  lilRectangle2.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import SwiftUI

struct lilRectangle2: View{
    @State var number: Double
    var body: some View{
        ZStack{
            Rectangle().fill(.white).cornerRadius(10).frame(width:81,height:56)
            Text(String(number)).font(.system(size:14)).zIndex(1).fontWeight(.medium).foregroundStyle(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue2, CustomColors.newBlue]), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct lilRectangle2_Previews:PreviewProvider{
    static var previews: some View{
        lilRectangle2(number: 2)
    }
}
