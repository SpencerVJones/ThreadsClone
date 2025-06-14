//  ExploreView.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/5/25.

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject var viewModel = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            VStack {
                                UserCell(user: user)
                                
                                Divider()
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user) // Takes us to the user profile when clicking from explore page
            })
            .navigationTitle("Search")
            // Search bar that hides as scroll
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    NavigationStack{
        ExploreView()
    }
}
