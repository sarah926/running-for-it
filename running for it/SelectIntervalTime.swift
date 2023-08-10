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
                RectangleView(mins:$minRunMinutes, secs:$minRunSeconds, choice:"Select Minimum Run")
            }
            Spacer()
            VStack{
                RectangleView(mins:$maxRunMinutes, secs:$maxRunSeconds, choice:"Select Maximum Run")
            }
            Spacer()
            VStack{
                RectangleView(mins: $minWalkMinutes, secs: $minWalkSeconds, choice:"Select Minimum Walk")
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
                    RoundedButton(title: "Continue", color: .blue).padding(10)//.offset(y:-150)
                }
        }
    }
}
class TimesUserSelected{
    var minRunMinutes: Int
    var minRunSeconds: Int
    var maxRunMinutes: Int
    var maxRunSeconds: Int
    var minWalkMinutes: Int
    var minWalkSeconds: Int
    init(minRunMinutes: Int, minRunSeconds: Int, maxRunMinutes: Int, maxRunSeconds: Int, minWalkMinutes: Int, minWalkSeconds: Int) {
        self.minRunMinutes = minRunMinutes
        self.minRunSeconds = minRunSeconds
        self.maxRunMinutes = maxRunMinutes
        self.maxRunSeconds = maxRunSeconds
        self.minWalkMinutes = minWalkMinutes
        self.minWalkSeconds = minWalkSeconds
    }
}
struct SelectIntervalTime_Previews: PreviewProvider {
    static var previews: some View {
        SelectIntervalTime()
    }
}
