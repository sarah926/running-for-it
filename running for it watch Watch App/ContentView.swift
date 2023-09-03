//
//  ContentView.swift
//  running for it watch Watch App
//
//  Created by Sarah Toll on 2023-08-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("iTunesArtwork").resizable()
            //Image(systemName: "iTunesArtwork")
                //.imageScale(.large)
                //.foregroundColor(.accentColor)
            Text("Start running")
            Button("Start"){}
            //RoundedButton(title:"starting", color: .blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
