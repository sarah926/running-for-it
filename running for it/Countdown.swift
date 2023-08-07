//
//  Countdown.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-03.
//

import SwiftUI

struct Countdown: View {
    @State var totalTimeInSeconds: Int
    let newTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    func updateTime(seconds: Int)->String{
        let sec = totalTimeInSeconds % 60
        let min = Int(totalTimeInSeconds / 60)
        if(min<10){
            if(sec<10){
                return "0" + String(min) + ":0" + String(sec)
            }
            return "0" + String(min) + ":" + String(sec)
        }
        return String(min) + ":" + String(sec)
    }
    var body: some View {
        //var totalTime = minutes * 60 + seconds
        Text(updateTime(seconds: totalTimeInSeconds)).bold().font(.system(size:100))
            .onReceive(newTimer) { _ in
                if totalTimeInSeconds > 0 {
                    totalTimeInSeconds -= 1
                }
                else{
                    newTimer.upstream.connect().cancel()
                }
            }
    }
}

struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown(totalTimeInSeconds: 10)
    }
}
