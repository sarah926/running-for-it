//
//  gradient.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct gradient: View {
    var text: String
    var color1: Color
    var color2: Color
    var body: some View {
        Text(text).font(.system(size:16).weight(.bold)).lineLimit(1).foregroundColor(.white).padding(.horizontal, 129).padding(.vertical, 18).background(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)).cornerRadius(99).frame(maxHeight: 60)
    }
}

struct gradient_Previews: PreviewProvider {
    static var previews: some View {
        gradient(text:"Confirm",color1: .blue, color2: .green)
    }
}
