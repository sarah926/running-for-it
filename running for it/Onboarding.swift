//
//  Onboarding.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI
//first onboarding page
struct Onboarding: View {
    var body: some View {
        VStack{
            //image at top
            Image("Groupon1").frame(maxHeight: .infinity, alignment:.top).offset(y:-45)//.resizable()
            //onboarding welcome text
            HStack{
                Text("Track Your Goal").font(.system(size:24)).fontWeight(.bold).multilineTextAlignment(.leading).padding(30)
                Spacer()
            }
            HStack{
                //could update text
                Text("Become a better runner, be consistant to a workout schedule, or track your progress to your goals.").padding(30).foregroundColor(CustomColors.darkGray)
            }
            Spacer(minLength:70)
            
            HStack{
                Spacer()
                NavigationLink(destination: CreateAccount()){
                        Image("Button").frame(width:60,height:60).padding(.trailing, 35)}
                }
            Spacer(minLength:45)
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
