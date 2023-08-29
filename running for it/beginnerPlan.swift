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
    var runTimes: [Double] = [1,1,1]
    //if the run time varies, this is the second number
    var secondRunTimes: [Double] = [0,0,0]
    //amount of time for the walk in minutes
    var walkTimes: [Double] = [1.5, 1.5, 1.5]
    //amount of times that the run and walk are repeated
    var repeats: [Int] = [6,8,8]
}
