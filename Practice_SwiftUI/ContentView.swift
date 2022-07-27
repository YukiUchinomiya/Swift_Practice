//
//  ContentView.swift
//  Practice_SwiftUI
//
//  Created by yuki uchinomiya on 2022/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("GitHubMark")
                .resizable()
                .frame(
                    width: 44.0,
                    height: 44.0
                )
            VStack(alignment: .leading) {
                Text("YukiUchinomiya")
                    .font(.caption)
                Text("GithubApplication")
                    .font(.body)
                    .fontWeight(.semibold)
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
