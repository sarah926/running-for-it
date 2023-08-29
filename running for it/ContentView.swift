//
//  ContentView.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-01.
//

import SwiftFX
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                //logo
                Spacer(minLength: 216)
                Image("r").resizable().scaledToFill().frame(width:130, height:130)
                //title
                Text("Run Buddy")
                    .font(.system(size:36)
                    //.custom("Poppins", size: 36)
                  ).fontWeight(.black).foregroundStyle(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue2, CustomColors.newBlue]), startPoint: .leading, endPoint: .trailing)
                   )
                //intro
                Text("Turning miles into\nmeaningful moments").foregroundColor(CustomColors.darkGray).font(.system(size:18))
                Spacer()
                //button links to next page
                NavigationLink(destination: Onboarding()){
                    gradient(text: "Get Started", color1: CustomColors.newBlue2, color2: CustomColors.newBlue)
                }
                Spacer()
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
//stores rgb values for brand colors
struct CustomColors{
    //OLD COLORS - REMOVE LATER
    static let darkBlue = Color(red:72/255, green: 0/255, blue:255/255)
    static let lightPurple =  Color(red:213/255, green:128/255, blue:254/255)
    static let mint = Color(red:3/255,green:199/255, blue:191/255)
    static let darkMint = Color(red:0/255,green:170/255, blue:170/255)
    static let darkerBlue = Color(red:0/255, green: 0/255, blue: 150/255)
    
    //brand colors
    static let newBlue = Color(red: 146/255, green: 163/255, blue: 253/255)
    static let newBlue2 = Color(red: 157/255, green: 206/255, blue: 255/255)
    static let black = Color(red: 29/255, green: 22/255, blue: 23/255)
    static let darkGray = Color(red:123/255, green: 111/255, blue: 114/255)
    static let lightPink = Color(red:197/255, green:139/255, blue:242/255)
    static let darkPink = Color(red:238/255, green:164/255, blue:206/255)
    
}
