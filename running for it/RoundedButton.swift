//
//  RoundedButton.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-10.
//

import SwiftUI

struct RoundedButton: View {
        var title: String
        var color: Color
        var body: some View{
            Text(title).padding(15).frame(maxWidth:200).frame(height: 60)
                //maxWidth: .infinity)
                .background(color)
                .font(.body)
                .foregroundColor(.white)
                .cornerRadius(30)
                .bold().padding(20)
        }
    
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(title:"test", color: .blue)
    }
}
