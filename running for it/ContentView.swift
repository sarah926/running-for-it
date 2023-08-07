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
                Text("Get Running!")
                NavigationLink(destination: Choose_Type(choice: 0)){
                    RoundedButton(title: "Start", color: .blue).padding(10)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
struct RoundedButton: View{
    var title: String
    var color: Color
    var body: some View{
        Text(title).padding(15).frame(maxWidth: .infinity)
            .background(color)
            .font(.body)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
