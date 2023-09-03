//
//  ProfilePage.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct ProfilePage: View {
    @State var user: UserInformation
    var body: some View {
        VStack{
            Text("Profile").foregroundColor(CustomColors.black).font(.system(size:16)).fontWeight(.bold)
            //Spacer()
            HStack{
                Image("Latest-Pic").resizable().padding(10).frame(width: 100, height:100)
                Spacer()
                Text(user.firstname + " " + user.lastname).font(.system(size:36)).fontWeight(.medium).padding(.trailing,30)
                
            }
            HStack{
                Picker(selection: $user.level, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Beginner").tag(1)
                    Text("Intermediate").tag(2)
                    Text("Expert").tag(3)
                }.font(.largeTitle).accentColor(CustomColors.darkGray)
                //Text(user.level).font(.system(size:12))
            }
            HStack{
                lilRectangle(number: user.workoutsCompleted, title:"Workouts")
                Spacer()
                lilRectangle(number:user.timeRan, title:"Minutes Ran")
                Spacer()
                lilRectangle(number:user.timeWorkedOut, title:"Total Minutes").padding(.trailing,20)
            }
            List{
                Section{
                    HStack{
                        Text("Personal Data")
                        Spacer()
                        Text(">")
                    }
                    HStack{
                        Text("Activity History")
                        Spacer()
                        Text(">")
                    }
                    HStack{
                        Text("Workout Progress")
                        Spacer()
                        Text(">")
                    }
                }header: {Text("Personal Information")}
                Section{
                    HStack{
                        Text("Send Me Notifications")
                        //Spacer()
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            
                        }
                    }
                }header:{Text("Notifications")}
                Section{
                    HStack{
                        Text("Contact Us")
                        Spacer()
                        Text(">")
                    }
                    HStack{
                        Text("Settings")
                        Spacer()
                        Text(">")
                    }
                }header:{
                    Text("Other")
                }
            }
            navBar(user: user, page: 2)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage(user: UserInformation(firstname: "Sarah", lastname:"Toll", level: "Beginner", workoutsCompleted: 2, timeRan: 50, timeWorkedOut: 200))
    }
}
