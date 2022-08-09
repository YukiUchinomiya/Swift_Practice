//
//  User.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/28.
//

import Foundation

struct User: Decodable {
    var name: String
    
    private enum CodingKeys: String, CodingKey {
            case name = "login"
        }
}
