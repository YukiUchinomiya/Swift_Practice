//
//  RepoDetailView.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/28.
//

import SwiftUI

struct RepoDetailView: View {
    let repo: Repo
    
    var body: some View {
        HStack {
            Image("GitHubMark")
                .resizable()
                .frame(width: 16.0,height: 16.0)
            VStack(alignment: .leading) {
                Text(repo.owner.name)
                    .font(.caption)
                Text(repo.name)
                    .font(.body)
                    .fontWeight(.bold)
            }
        }    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView(repo: .mock1)
    }
}
