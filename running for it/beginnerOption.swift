//
//  beginnerOption.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import SwiftUI

struct beginnerOption: View {
    //0 is beginner, 1 is intermeidate, 2 is hard
    var level: Int
    var levelText:[String] = ["I have little to no experience running  \nand i am just starting out.", "I’m active a few times a week  \nand my cardio is decent. I want to  \nimprove my speed and endurance.", "I’m an avid runner but need to shake  \n things up to keep my body burning  \nfat and increasing performance."]
    var body: some View {
        VStack{
            switch level{
            case 0:
                Image("Vectorbeginner").resizable().frame(width:206, height: 290)
                Text("I'm a beginner\n\n").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
                Text("____________").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
                
            case 1:
                Image("Vectorinter").resizable().frame(width:206, height: 290)
                Text("I'm an intermediate").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
                Text("_________________").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
            default:
                Image("Vectorhard").resizable().frame(width:206, height: 290)
                Text("I'm a pro").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
                Text("________").foregroundColor(.white).fontWeight(.semibold).font(.system(size:14))
            }
            Text(levelText[level]).foregroundColor(.white).font(.system(size:12)).frame(width:215, height: 50).multilineTextAlignment(.center).lineLimit(5)
        }.background(Rectangle().fill(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue, CustomColors.newBlue2]), startPoint: .leading, endPoint: .trailing)).frame(width: 275, height: 478).cornerRadius(22))
    }
}

struct beginnerOption_Previews: PreviewProvider {
    static var previews: some View {
        beginnerOption( level: 1)
    }
}
