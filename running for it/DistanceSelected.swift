//
//  DistanceSelected.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-10.
//

import SwiftUI

struct DistanceSelected: View {
    @State var times: TimesUserSelected
    var body: some View {
        Text("Distance functionality not working yet :(\n\n Please choose another option!").multilineTextAlignment(.center).bold().font(.system(size:33)).foregroundColor(.blue).background( Image("runner").resizable().frame(height: 600))
    }
}

struct DistanceSelected_Previews: PreviewProvider {
    static var previews: some View {
        DistanceSelected(times: TimesUserSelected(minRunMinutes: 1, minRunSeconds: 30, maxRunMinutes: 2, maxRunSeconds: 0, minWalkMinutes: 1, minWalkSeconds: 30))
    }
}
