//
//  CustomFont.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct CustomFont: View{
    var text: String
    var size: CGFloat
    var color: Color
    var body: some View{
        Text(text).font(.custom("Impact", size:size)).multilineTextAlignment(.center).foregroundColor(color).fontWeight(.bold)
    }
}

struct CustomFont_Previews: PreviewProvider {
    static var previews: some View {
        CustomFont(text: "test", size: 100, color: .blue)
    }
}
