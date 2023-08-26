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
                Spacer()
                Image("iTunesArtwork").resizable().scaledToFill().offset(x:-25)
                //Font(color1: .black, color2: .blue, texts: "RUN", fontSize: 100)
                CustomFont(text: "RUN TODAY", size:75,color: CustomColors.darkBlue)
                //Text("RUN TODAY").font(.custom("Impact", size:100)).multilineTextAlignment(.center).foregroundColor(CustomColors.darkBlue).fontWeight(.bold)
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title: "Start", color: CustomColors.lightPurple)
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
struct CustomColors{
    static let darkBlue = Color(red:72/255, green: 0/255, blue:255/255)
    static let lightPurple =  Color(red:213/255, green:128/255, blue:254/255)
    static let mint = Color(red:3/255,green:199/255, blue:191/255)
    static let darkMint = Color(red:0/255,green:170/255, blue:170/255)
    static let darkerBlue = Color(red:0/255, green: 0/255, blue: 150/255)
}


