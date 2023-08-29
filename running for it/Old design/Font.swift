//
//  Font.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-13.
//

import SwiftUI

struct Font: View {
    var color1: Color
    var color2: Color
    var texts: String
    var fontSize: CGFloat
    var body: some View {
        ZStack{
            Text(texts).font(.custom("Arial", size:fontSize)).bold().foregroundColor(color1)
            Text(texts).font(.custom("Arial", size:fontSize)).bold().foregroundColor(color2).offset(x:-10)
        }
    }
}

struct Font_Previews: PreviewProvider {
    static var previews: some View {
        Font(color1: .black, color2: .blue, texts: "WALK", fontSize: 75)
    }
}
