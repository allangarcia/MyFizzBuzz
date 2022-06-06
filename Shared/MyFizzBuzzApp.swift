//
//  MyFizzBuzzApp.swift
//  Shared
//
//  Created by Allan Garcia on 05/06/22.
//

import SwiftUI

@main
struct MyFizzBuzzApp: App {
    
    let myFizzBuzzStore = MyFizzBuzzStore()
    
    var body: some Scene {
        WindowGroup {
            MyFizzBuzzView(store: myFizzBuzzStore)
        }
    }
}
