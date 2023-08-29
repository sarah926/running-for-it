//
//  LevelSelect.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct LevelSelect: View {
    @State var level: Int
    func nextLevel(leftOrRight:Int)->Int{
        var tempLevel = 0
        if(leftOrRight == 0){
            //go left
            tempLevel = level - 1
            if(tempLevel<0){
                return 2
            }
        }
        else{
            tempLevel = level + 1
            if(tempLevel>2){
                return 0
            }
        }
        return tempLevel
    }
    var body: some View {
        VStack{
            
            Text("What is your goal?").font(.system(size:20)).fontWeight(.bold).foregroundColor(CustomColors.black)
            Text("This will help us choose a best\nprogram for you").multilineTextAlignment(.center).foregroundColor(CustomColors.darkGray).font(.system(size:12))
            Spacer()
            HStack{
                //NavigationLink(destination: LevelSelect(level: nextLevel(leftOrRight: 0))){
                Button(action: {level = nextLevel(leftOrRight: 0)}, label: {
                    Rectangle().fill(CustomColors.newBlue).frame(width:50, height:450).cornerRadius(22).offset(x:-20)})
                Spacer(minLength: 10)
                beginnerOption(level: level)
                Spacer(minLength: 10)
                Button(action:{level =  nextLevel(leftOrRight: 1)},label: {
                    Rectangle().fill(CustomColors.newBlue).frame(width:50, height:450).cornerRadius(22)     .offset(x:20)})
                
            }
            Spacer()
            NavigationLink(destination: SelectIntervalTime()){
                gradient(text: "Confirm", color1: CustomColors.newBlue, color2: CustomColors.newBlue2)}
            /*Picker("hello", selection: .constant(1)) {
             beginnerOption(imageName: "Vectorinter", level: 1).frame(height:100)
             //Rectangle().fill(CustomColors.newBlue)
             Text("Intermediate").tag(1)
             //Text("Expert").tag(2)
             }.pickerStyle(InlinePickerStyle()).frame(height:500)*/
        }
    }
    
}

struct LevelSelect_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelect(level:1)
    }
}
