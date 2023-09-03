//
//  CreateAccount.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct CreateAccount: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Text("Hey there,").font(.system(size:16))
            Text("Create an Account").fontWeight(.bold).font(.system(size:20))
            Spacer()
            HStack{
                Image("Profile")
                TextField("  First Name", text: $firstName).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.name)
            }
            HStack{
                Image("Profile")
                TextField("  Last Name", text: $lastName).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.familyName)
            }.padding(.top, 15)
            NavigationLink(destination: Login()){
                Text("Already a user?").underline(color: .blue).foregroundColor(.blue)
            }
            /*
            HStack{
                Image("Message")
                TextField("  Email", text: $email).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.emailAddress)
            }.padding(.top, 15)
            HStack{
                Image("Lock")
                TextField("  Password", text: $password).frame(width: 315, height: 48).foregroundColor(CustomColors.black).background(Rectangle().opacity(0.1).cornerRadius(14)).textContentType(.newPassword)
            }.padding(.top, 15)
             */
            Spacer()
            NavigationLink(destination: LevelSelect(user: UserInformation(firstname: firstName, lastname: lastName, level: "Beginner", workoutsCompleted: 0, timeRan: 0, timeWorkedOut: 0))){
                gradient(text: "Register", color1: CustomColors.newBlue, color2: CustomColors.newBlue2)
            }
        }
        
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}

