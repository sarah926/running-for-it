//
//  ContentView.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("Start Your Running Adventure! ").bold().font(.system(size:33)).multilineTextAlignment(.center)
                //Text("🏃").font(.system(size:200))
                Image("iTunesArtwork").resizable().scaledToFill()
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title: "Start", color: .blue)
                }
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


