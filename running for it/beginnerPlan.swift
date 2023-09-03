//
//  beginnerPlan.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import Foundation
//storing the numbers for the beginner plan
struct beginnerPlan{
    //amount of time for the run in minutes
    var runTimes: [Double] = [1, 1, 1, 1.5, 1.5, 1.5, 2, 2, 2.5, 3, 4, 4, 5, 5, 8, 10, 12, 15, 18, 20, 25, 30, 35]
    //if the run time varies, this is the second number
    var secondRunTimes: [Double] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 5, 3, 0, 5, 0, 0, 0]
    //amount of time for the walk in minutes
    var walkTimes: [Double] = [1.5, 1.5, 1.5, 2, 2, 2, 2, 2, 2.5, 2.5, 3, 2.5, 3, 3, 5, 5, 3, 3, 3, 0, 3, 0, 0, 0]
    //amount of times that the run and walk are repeated
    var repeats: [Int] = [6, 8, 8, 5, 5, 6, 4, 6, 4, 5, 4, 4, 3, 4, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1]
    //total time for working out
    var totalTimes: [Double] = [15, 20, 20, 17.5, 17.5, 16, 20, 20, 27.5, 28, 26, 24, 36, 26, 30, 23, 20, 20, 28, 25, 30, 35]
}
