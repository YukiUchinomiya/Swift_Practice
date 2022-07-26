//
//  Practice_SwiftUIApp.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/21.
//

import SwiftUI

@main
struct Practice_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
