//
//  SelectIntervalTime.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-02.
//

import SwiftUI

struct SelectIntervalTime: View {
    
    init() {
        for i in 0...60 {
            self.times.append(TimeSelection(i))
        }
    }
    
    struct TimeSelection: Hashable, Identifiable {
        init(_ value: Int) {
            self.time = value
        }
        var time: Int;
        var id: Int {
            get{
                return time
            }
        }
    }
    var times: [TimeSelection] = []
    
    @State var selectedTime: TimeSelection = TimeSelection(10)
    @State var minRunSeconds = 0
    @State var minRunMinutes = 0
    @State var maxRunSeconds = 0
    @State var maxRunMinutes = 0
    @State var minWalkSeconds = 0
    @State var minWalkMinutes = 0
    func calcSeconds(minutes:Int, seconds:Int)->Int{
        let total = minutes * 60 + seconds
        return total
    }
    var body: some View {
        VStack{
            VStack{
                Text("Select Minimum Running Time:").bold().font(.system(size:20)).multilineTextAlignment(.center).offset(y:185).zIndex((1))
                star(mins:minRunMinutes, secs:minRunSeconds).offset(y:200)
            }
            
            VStack{
                Text("Select Maximum Running Time: ").bold().font(.system(size:20)).multilineTextAlignment(.center).offset(y:85).zIndex((1))
                star(mins:maxRunMinutes, secs:maxRunSeconds).offset(y:100)
            }
            VStack{
                Text("Select Minimum Walking Time: ").bold().font(.system(size:20)).multilineTextAlignment(.center).offset(y:-10).zIndex((1))
                star(mins: minWalkMinutes, secs: minWalkSeconds)
            }
            /*
             List{
             Text("Seconds").frame(alignment: .center)
             Picker("Seconds", selection: $selectedTime){
             ForEach(times){ p in
             Text(String(p.time))
             //print(String(p.time))
             }
             }
             }.pickerStyle(.wheel)
             .padding(.horizontal, -15).frame(width:150)
             */
            
            NavigationLink(destination: Countdown(totalTimeInSeconds:calcSeconds(minutes: minRunMinutes, seconds: minRunSeconds))) {
                RoundedButton(title: "Submit", color: .blue).padding(10).offset(y:-150)
            }
        }
    }
}
struct star: View{
    @State var mins:Int
    @State var secs:Int
    var body: some View{
        Rectangle().foregroundColor(.mint).cornerRadius(20).frame(width: 350, height:150).padding(10).offset(y:-75)
        HStack{
            Text("MINUTES:                    ").bold().offset(x:20,y:-200).padding(10)
            Stepper("\(mins)", value: $mins, in: 0...59).offset(x:-30, y:-200)
        }
        HStack{
            Text("SECONDS:                  ").bold().offset(x:20,y:-200).padding(10)
            Stepper("\(secs)", value: $secs
                    , in: 0...59).offset(x:-30, y:-200)
        }
    }
}
struct SelectIntervalTime_Previews: PreviewProvider {
    static var previews: some View {
        SelectIntervalTime()
    }
}
