//
//  User.swift
//  A Miles Away
//
//  Created by Saket Arora on 11/23/21.
//

import SwiftUI

class User: Identifiable {
    let id: UUID
    var name: String
    var phone_number: String
    var email: String
    var college: String
    var userImage: String
    
    init(id: UUID = UUID(), name: String, phone_number: String, email: String, college: String, userImage: String){
        self.id = id
        self.name = name
        self.phone_number = phone_number
        self.email = email
        self.college = college
        if userImage == "N/A"{
            self.userImage =  "person.crop.circle.badge.questionmark"
        }
        else{
            self.userImage = userImage
        }

    }
}
class Buyer: User{
    init(name: String, phone_number: String, email: String, college: String, userImage: String = "N/A"){
        super.init(name:name, phone_number: phone_number, email: email, college: college, userImage:userImage)
    }
}
class Seller: Buyer{
    init(id: UUID = UUID(), name: String, phone_number: String, email: String, college: String, userImage: String = "N/A"){
        super.init(name:name, phone_number: phone_number, email: email, college: college, userImage:userImage)
    }
}

extension User {
    static var data: [User]{
        [
            Buyer(name : "Saket Arora", phone_number: "4083293647", email: "s2arora@ucsd.edu", college: "Thurgood Marshall College"),
            Buyer(name : "Minjae Sung", phone_number: "8582229345", email: "mj@ucsd.edu", college: "Warren College", userImage: "michael-jordan"),
            Buyer(name : "Joe Shmoe", phone_number: "9498832434", email: "joe@ucsd.edu", college: "Sixth College")
        ]
    }
}
