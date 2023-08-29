//
//  Login.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    var body: some View {
        
        VStack{
            Image("Vector-Section").frame(width: 375, height: 350)
            Text("Hi there, ").font(.system(size:16))
            Text("Welcome Back").fontWeight(.bold).font(.system(size:20))
            HStack{
                Image("Message")
                TextField("  Email", text: $email).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14))
            }.padding(.top, 15)
            HStack{
                Image("Lock")
                TextField("  Password", text: $email).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14))
            }
            Spacer()
            gradient(text: "Login", color1: CustomColors.newBlue, color2: CustomColors.newBlue2)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
