//  UserContentListViewModel.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/13/25

import Foundation

class UserContentListViewModel: ObservableObject {
    @Published var threads = [Thread]()
    let user: User
    
    init(user: User) {
        self.user = user
        Task { try await fetchUserThreads()}
    }
    
    @MainActor
    func fetchUserThreads() async throws {
        self.threads = try await ThreadService.fetchUserTreads(uid: user.id)
        
        for i in 0..<threads.count {
            threads[i].user = self.user
        }
        
        self.threads = threads
    }
}
