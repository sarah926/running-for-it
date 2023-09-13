//
//  intermediatePlan.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import Foundation
struct intermediatePlan{
    //amount of time for the run in minutes
    var runTimes: [Double] = [5, 5, 7, 8, 8, 10, 15, 15, 15, 20]
    //if the run time varies, this is the second number
    var secondRunTimes: [Double] = [0, 0, 0, 0, 5, 3, 0, 5, 5, 5]
    //amount of time for the walk in minutes
    var walkTimes: [Double] = [3, 2, 2, 1.5, 1, 1.5, 2, 1.5, 1, 2]
    //amount of times that the run and walk are repeated
    var repeats: [Int] = [4, 5, 4, 5, 4, 3, 3, 4, 5, 4]
    //total time for working out
    var totalTimes: [Double] = [32, 35, 36, 47.5, 22]
}
