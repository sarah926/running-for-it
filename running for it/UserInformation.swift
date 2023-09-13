//
//  UserInformation.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-28.
//

import Foundation
class UserInformation{
    var firstname: String
    var lastname: String
    var level: String
    var workoutsCompleted: Int
    var timeRan: Int
    var timeWorkedOut: Int
    //init variables
    init(firstname: String, lastname: String, level: String, workoutsCompleted: Int, timeRan: Int, timeWorkedOut: Int) {
        self.firstname = firstname
        self.lastname = lastname
        self.level = level
        self.workoutsCompleted = workoutsCompleted
        self.timeRan = timeRan
        self.timeWorkedOut = timeWorkedOut
    } 
    init(firstname: String, lastname: String, level: String){
        self.firstname = firstname
        self.lastname = lastname
        self.level = level
        self.workoutsCompleted = 2
        self.timeRan = 0
        self.timeWorkedOut = 0
    }
    func setLevel(level: Int) -> String{
        if(level == 0){
            self.level = "Beginner"
        }
        else if(level == 1){
            self.level = "Intermediate"
        }
        else{
            self.level = "Expert"
        }
        return self.level
    }
}
class manageUserInformation{
    var userList: [UserInformation] = []
    //adds names to the list
    func addCredentials(firstname: String, lastname: String, level: String){
        var found = searchCredentialNum(firstname: firstname, lastname: lastname)
        if(found < 0){
            userList.append(UserInformation(firstname: firstname, lastname: lastname, level: level))
        }
    }
    //deletes name from list
    func deleteCredential(firstname: String, lastname: String){
        var found = searchCredentialNum(firstname: firstname, lastname: lastname)
        if(found > 0){
            userList.remove(at: found)
        }
    }
    //searches for name
    func searchCredentialNum(firstname: String, lastname: String)->Int{
        var tracker = 0
        for _ in userList{
            if userList[tracker].firstname == firstname && userList[tracker].lastname == lastname{
                return tracker
            }
            tracker+=1
        }
        return -1
    }
    //returns credential if in the list, if not creates a new one and returns it
    func getCredential(firstname: String, lastname: String)->UserInformation{
        var found = searchCredentialNum(firstname: firstname, lastname: lastname)
        if(found > 0){
            return userList[found]
        }
        return UserInformation(firstname: "", lastname: "", level: "")
    }
}
