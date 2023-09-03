//
//  singleWorkout.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import Foundation
class singleWorkout{
    var firstRunMinutes: Double
    var runTimeVaries: Bool
    var secondRunMinutes: Double
    var walkMinutes: Double
    var repeats: Int
    init(firstRunMinutes: Double, runTimeVaries: Bool, secondRunMinutes: Double, walkMinutes: Double, repeats: Int) {
        self.firstRunMinutes = firstRunMinutes
        self.runTimeVaries = runTimeVaries
        self.secondRunMinutes = secondRunMinutes
        self.walkMinutes = walkMinutes
        self.repeats = repeats
    }
}
