//  FeedView.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/5/25.

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack{
                    ForEach(viewModel.threads) { thread in
                        // Thread Cells
                        ThreadCell(thread: thread)
                    }
                }
                
            }
            // Pull down refresh
            .refreshable {
                Task { try await viewModel.fetchThreads()}
                print("DEBUG: Refresh ")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        // Refresh button
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color(.black))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
