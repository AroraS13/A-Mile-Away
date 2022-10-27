//
//  A_Miles_AwayApp.swift
//  A Miles Away
//
//  Created by Saket Arora on 11/23/21.
//

import SwiftUI
import Firebase

@main
struct A_Miles_AwayApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            UserView(users: User.data)
        }
    }
}
