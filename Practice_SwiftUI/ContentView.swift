//
//  ContentView.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/21.
//

import SwiftUI

struct RepoListView: View {
        private let mockRepos = [
            Repo(id:1, name: "SwiftRepo1", owner: User(name: "YukiUchinomiya1")),
            Repo(id:2, name: "SwiftRepo2", owner: User(name: "YukiUchinomiya2")),
            Repo(id:3, name: "SwiftRepo3", owner: User(name: "YukiUchinomiya3")),
            Repo(id:4, name: "SwiftRepo4", owner: User(name: "YukiUchinomiya4")),
            Repo(id:5, name: "SwiftRepo5", owner: User(name: "YukiUchinomiya5"))
        ]
    var body: some View {
        List(mockRepos) { repo in
            RepoRow(repo:repo)
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            RepoListView()
        }
    }
}
