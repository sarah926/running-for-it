//
//  Countdown.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-03.
//

import SwiftUI

struct Countdown: View {
    //@State var totalTimeInSeconds: Int
    @State var times: TimesUserSelected
    @State var totalMinRunSec = 0
    @State var totalMaxRunSec = 0
    @State var totalMinWalkSec = 0
    @State var runOrWalk = 0
    //run is 0, walk is 1
    @State var tempTime = 0
    @State var initialized = false
    
    let newTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    func handleTimer() {
        if !initialized {
            tempTime = times.maxRunMinutes * 60 + times.maxRunSeconds
            initialized = true
        }
        
        if tempTime > 0 {
            tempTime -= 1
        }
        else{
            newTimer.upstream.connect().cancel()
            runOrWalk = 1
        }
    }
    
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
        //var totalTime = minutes * 60 + seconds
        VStack{
            if(runOrWalk == 0){
                Text("RUN").bold().font(.system(size:33)).foregroundColor(.blue)
            }
            else{
                Text("WALK").bold().font(.system(size:33)).foregroundColor(.mint)
            }
            
            //Text(String(self.totalMinRunSec)).bold()
            Text(updateTime(seconds: tempTime)).bold().font(.system(size:100))
                .onReceive(newTimer) { _ in
                    self.handleTimer()
                }
            
        }
    }
}

struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 30, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
