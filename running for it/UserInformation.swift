//
//  UserInformation.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import Foundation
class UserInformation{
    var name: String
    var level: String
    var workoutsCompleted: Int
    var timeRan: Int
    var timeWorkedOut: Int
    //init variables
    init(name: String, level: String, workoutsCompleted: Int, timeRan: Int, timeWorkedOut: Int) {
        self.name = name
        self.level = level
        self.workoutsCompleted = workoutsCompleted
        self.timeRan = timeRan
        self.timeWorkedOut = timeWorkedOut
    }
}
