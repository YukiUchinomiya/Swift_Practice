//
//  Repo.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/28.
//

import Foundation

struct Repo: Identifiable {
    var id: Int
    var name: String
    var owner: User
    var description: String
    var stargazersCount: Int
}
