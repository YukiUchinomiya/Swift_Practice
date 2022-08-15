import SwiftUI
import Combine

@MainActor
class ReposStore: ObservableObject {
    @Published private(set) var repos = [Repo]()
    @Published private(set) var error: Error? = nil
    @Published private(set) var isLoading: Bool = false

    func loadRepos() async {
        let url = URL(string: "https://api.github.com/orgs/mixigroup/repos")!

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = [
            "Accept": "application/vnd.github.v3+json"
        ]
        
        isLoading = true

        do {
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
            
        //guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badServerResponse)
        // }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let value = try decoder.decode([Repo].self, from: data)
        repos = value
        } catch {
            self.error = error
            isLoading = false
        }
    }
}

struct RepoListView: View {
    @StateObject private var reposStore = ReposStore()
    
    var body: some View {
            NavigationView{
                if reposStore.error != nil {
                        VStack{
                            Group {
                                Image("GitHubMark")
                                Text("Failed to load repositories")
                                    .padding(.top, 4)
                            }
                            .foregroundColor(.black)
                            .opacity(0.4)
                            Button(
                                action: {
                                    Task {
                                        await reposStore.loadRepos() // リトライボタンをタップしたときに再度リクエストを投げる
                                    }
                                },
                                label: {
                                    Text("Retry")
                                        .fontWeight(.bold)
                                }
                            )
                            .padding(.top, 8)
                        }
                    }else{
                        if reposStore.isLoading {
                            ProgressView("loading...")
                        } else {
                        List(reposStore.repos) { repo in
                            NavigationLink(
                                destination: RepoDetailView(repo: repo)) {
                                RepoRow(repo: repo)
                            }
                        }
                        .navigationTitle("Repositories")
                }
        }
            .task{
                await reposStore.loadRepos()
            }
    }

}

    struct RepoListView_Previews: PreviewProvider {
        static var previews: some View {
            RepoListView()
    }
}
