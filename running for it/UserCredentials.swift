//
//  UserCredentials.swift
//  running for it
//
//  Created by Sarah Toll on 2023-08-29.
//

import Foundation
class userCredentials: Identifiable{
    //var email: String
    //var password: String
    var firstname: String
    var lastname: String
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
    }
}
class manageCredentials{
    var userCredentialList: [userCredentials] = []
    //adds names to the list
    func addCredentials(firstname: String, lastname: String){
        var found = searchCredential(firstname: firstname, lastname: lastname)
        if(found < 0){
            userCredentialList.append(userCredentials(firstname: firstname, lastname: lastname))
        }
    }
    //deletes name from list
    func deleteCredential(firstname: String, lastname: String){
        var found = searchCredential(firstname: firstname, lastname: lastname)
        if(found > 0){
            userCredentialList.remove(at: found)
        }
    }
    //searches for name
    func searchCredential(firstname: String, lastname: String)->Int{
        var tracker = 0
        for _ in userCredentialList{
            if userCredentialList[tracker].firstname == firstname && userCredentialList[tracker].lastname == lastname{
                return tracker
            }
            tracker+=1
        }
        return -1
    }
}
/*
class manageUserCredentials{
    var userCredentialList: [userCredentials] = []
    static func addCredentials(email: String, password: String, firstname: String, lastname:String){
        userCredentialList.append(userCredentials(email: email, password: password, firstname: firstname, lastname: lastname))
    }
    static func validateCredentials(){
        
    }
    static func deleteCredentials(){
        
    }
}
*/
