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
            Spacer()
            VStack(spacing:0){
                CustomFont(text: "RUN", size: 100, color: CustomColors.darkBlue)
                RectangleViewVersion2(minMins:$minRunMinutes, minSecs:$minRunSeconds, maxMins: $maxRunMinutes, maxSecs: $maxRunSeconds, backColor: CustomColors.darkBlue, textColor: .white)
            }
            Spacer()
            /*VStack(spacing:0){
                CustomFont(text: "MAX RUN", size: 50, color: CustomColors.darkBlue)
                RectangleView(mins:$maxRunMinutes, secs:$maxRunSeconds, backColor: CustomColors.darkBlue, textColor: .white)
            }*/
            Spacer()
            VStack(spacing:0){
                CustomFont(text: "WALK", size: 100, color: .mint)
                RectangleVersion3(minMins: $minWalkMinutes, minSecs: $minWalkSeconds,backColor: .mint, textColor: .white)
            }
                /*
                 test code for picker
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
                
            NavigationLink (destination: Choose_Type(times: TimesUserSelected(minRunMinutes: minRunMinutes, minRunSeconds: minRunSeconds, maxRunMinutes: maxRunMinutes, maxRunSeconds: maxRunSeconds, minWalkMinutes: minWalkMinutes, minWalkSeconds: minWalkSeconds))){
                RoundedButton(title: "Continue", color: CustomColors.lightPurple)//.offset(y:-150)
                }
        }
    }
}

struct SelectIntervalTime_Previews: PreviewProvider {
    static var previews: some View {
        SelectIntervalTime()
    }
}
