//
//  SummarySquare.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-10.
//

import SwiftUI

struct SummarySquare: View {
    var t: Int
    var isRun: Bool
    func updateTime(seconds: Int)->String{
        let sec = seconds % 60
        let min = Int(seconds / 60)
        if(min<10){
            if(sec<10){
                return "0" + String(min) + ":0" + String(sec)
            }
            return "0" + String(min) + ":" + String(sec)
        }
        return String(min) + ":" + String(sec)
    }
    var body: some View {
        VStack{
            if isRun{
                Text("Run").background(Rectangle().fill(CustomColors.darkBlue).frame(width:80)).foregroundColor(.white).font(.system(size:35))
            }
            else{
                Text("Walk").background(.mint).font(.system(size:37)).foregroundColor(.white)
            }
            let temp = updateTime(seconds: t)
            Text("\(temp)").font(.system(size:25)).bold()
        }.frame(width:85).border(.black, width: 4)
    }
}

struct SummarySquare_Previews: PreviewProvider {
    static var previews: some View {
        SummarySquare(t: 1, isRun: true)
    }
}
