//
//  Choose_Type.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-01.
//

import SwiftUI

struct Choose_Type: View {
    @State var choice: Int
    var body: some View {
            VStack{
                Text("Measure Run By:").bold()
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title:"Time", color: .purple).padding(10)
                }
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title: "Intervals", color: .pink).padding(10)
                }
                
                NavigationLink(destination: SelectIntervalTime()){
                    RoundedButton(title: "Distance", color: .blue).padding(10)
                }
                
            }
            
            Button(action: {
                choice = 2
            }){
                RoundedButton(title: "Distance", color: .blue).padding(10)
            }
        
    }
    
}

struct Choose_Type_Previews: PreviewProvider {
    static var previews: some View {
        Choose_Type(choice: 1)
    }
}
