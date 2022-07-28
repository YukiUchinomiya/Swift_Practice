//
//  ContentView.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/21.
//

import SwiftUI

struct RepoListView: View {
    private let mockRepos: [Repo] = [
        .mock1, .mock2, .mock3, .mock4, .mock5
    ]
        
    var body: some View {
        List(mockRepos) { repo in
            RepoRow(repo:repo)
        }
    }
}

    struct RepoListView_Previews: PreviewProvider {
        static var previews: some View {
            RepoListView()
    }
}