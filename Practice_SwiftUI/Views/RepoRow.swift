//
//  RepoRow.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/28.
//

import SwiftUI

struct RepoRow: View {
    let repo: Repo
    var body: some View {
        VStack{
            HStack {
                Image("GitHubMark")
                    .resizable()
                    .frame(width: 44.0,height: 44.0)
                Text(repo.owner.name)
                    .font(.caption)
            }
            VStack(alignment: .leading) {
                    Text(repo.name)
                        .font(.body)
                        .fontWeight(.semibold)
            }
        }
    }
}

struct RepoRow_Previews: PreviewProvider {
    static var previews: some View {
        RepoRow(repo: .mock1)
    }
}
