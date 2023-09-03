//
//  intermediatePlan.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-30.
//

import Foundation
struct intermediatePlan{
    //amount of time for the run in minutes
    var runTimes: [Double] = [0.5,1,1]
    //if the run time varies, this is the second number
    var secondRunTimes: [Double] = [0,0,0]
    //amount of time for the walk in minutes
    var walkTimes: [Double] = [0.5, 1.5, 1.5]
    //amount of times that the run and walk are repeated
    var repeats: [Int] = [1,8,8]
    //total time for working out
    var totalTimes: [Double] = [15, 20, 25]
}
