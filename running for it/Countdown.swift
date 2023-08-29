//
//  Countdown.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-03.
//

import SwiftUI
import AVFoundation

struct Countdown: View {
    @State var times: TimesUserSelected
    @State var repeats: Int
    //run is 0, walk is 1
    @State var runOrWalk = 0
   
    @State var tempTime = 0
    @State var initialized = false
    @State var timerNumber = 1
    
    @State var newTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func handleTimer() {
        if !initialized {
            if timerNumber%2 == 1{
                runOrWalk = 0
                tempTime = times.minRunMinutes * 60 + times.minRunSeconds
            }else{
                runOrWalk = 1
                tempTime = times.minWalkMinutes * 60 + times.minWalkSeconds
            }
            
            initialized = true
        }
        if(timerNumber > 0 && timerNumber < (repeats * 2)){
            newTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        }
        else if(timerNumber >= (repeats * 2)){
            /*NavigationLink(destination: FinishedWorkout()){
                RoundedButton(title: "Done", color: CustomColors.darkBlue)
            }*/
            
        }
        if tempTime > 0 {
            tempTime -= 1
        }
        else{
            newTimer.upstream.connect().cancel()
            AudioServicesPlaySystemSound(1333)
            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)){}
            timerNumber+=1
            initialized = false
            //runOrWalk = 1
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
            Spacer(minLength:161)
            if(runOrWalk == 0){
                Text("Run Interval").font(.system(size:20)).fontWeight(.bold)
                Text("Time left to run.").font(.system(size:12)).foregroundColor(CustomColors.darkGray)
                //CustomFont(text: "Run Interval", size: 50, color: CustomColors.darkBlue)
                //Text("RUN").bold().font(.system(size:33)).foregroundColor(.blue)
            }
            else{
                Text("Walk Interval").font(.system(size:20)).fontWeight(.bold).foregroundColor(CustomColors.black)
                Text("Time left to walk.").font(.system(size:12)).foregroundColor(CustomColors.darkGray)
                //CustomFont(text: "WALK", size: 50, color: .mint)
                //Text("WALK").bold().font(.system(size:33)).foregroundColor(.mint)
            }
            Spacer(minLength:130)
            //Text(String(self.totalMinRunSec)).bold()
            Text(updateTime(seconds: tempTime)).font(.system(size:64)).fontWeight(.bold).background(Circle().fill(LinearGradient(gradient: Gradient(colors: [CustomColors.newBlue, CustomColors.newBlue2]), startPoint: .leading, endPoint: .trailing)).frame(width:262, height:262))
                .onReceive(newTimer) { _ in
                    self.handleTimer()
                }
            Spacer(minLength: 200)
            Text("=").font(.system(size:40)).foregroundColor(.white).fontWeight(.bold).rotationEffect(Angle(degrees:-90)).background(Circle().fill(LinearGradient(gradient: Gradient(colors: [CustomColors.darkPink, CustomColors.lightPink]), startPoint: .leading, endPoint: .trailing)).frame(width:60))
            //Text("Interval \(timerNumber) / \(repeats * 2)")
            NavigationLink(destination: FinishedWorkout()){
                gradient(text: "Skip To Walk", color1: CustomColors.newBlue, color2: CustomColors.newBlue2)
                //RoundedButton(title: "End Workout", color: CustomColors.lightPurple)
            }
        }
    }
}

struct Countdown_Previews: PreviewProvider {
    static var previews: some View {
        Countdown(times: TimesUserSelected(minRunMinutes: 0, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 30, minWalkMinutes: 1, minWalkSeconds: 30), repeats:2)
    }
}
