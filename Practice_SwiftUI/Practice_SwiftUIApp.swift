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

enum Stateful<Value> {
    case idle
    case loading
    case failed(Error)
    case loaded(Value)
}

var data: Stateful<[String]> = .idle
// データ取得中
data = .loading
// データ取得失敗
data = .failed(DummyError())
// データ取得完了
data = .loaded(["data1", "data2", "data3"])

// 他の型でも利用可能
var anotherData: Stateful<[Int]> = .loaded([1, 2, 3])