//
//  TimesUserSelected.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import Foundation
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
