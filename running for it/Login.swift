//
//  Login.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct Login: View {
    @State var firstName = ""
    @State var lastName = ""
    //@State var email = ""
    //@State var password = ""
    @State var manage = manageUserInformation()
    var body: some View {
        
        VStack{
            Image("Vector-Section").frame(width: 375, height: 350)
            Text("Hi there, ").font(.system(size:16))
            Text("Welcome Back").fontWeight(.bold).font(.system(size:20))
            HStack{
                Image("Profile")
                TextField("  First Name", text: $firstName).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.name)
            }
            HStack{
                Image("Profile")
                TextField("  Last Name", text: $lastName).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.familyName)
            }.padding(.top, 15)
            //add for email and password
            /*
            HStack{
                Image("Message")
                TextField("  Email", text: $email).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.emailAddress)
            }.padding(.top, 15)
            HStack{
                Image("Lock")
                SecureField("  Password", text: $password).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.password)
            }*/
            Spacer()
            if(manage.getCredential(firstname: firstName, lastname: lastName).firstname.isEmpty){
                NavigationLink(destination: HomePage(user: manage.getCredential(firstname: firstName, lastname: lastName))){
                    gradient(text: "Login", color1: CustomColors.newBlue, color2: CustomColors.newBlue2).disabled(firstName.isEmpty || lastName.isEmpty)
                }
            }else{
                NavigationLink(destination: HomePage(user: UserInformation(firstname: firstName, lastname: lastName, level: "Beginner"))){
                    gradient(text: "Login", color1: CustomColors.newBlue, color2: CustomColors.newBlue2).disabled(firstName.isEmpty || lastName.isEmpty)
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
