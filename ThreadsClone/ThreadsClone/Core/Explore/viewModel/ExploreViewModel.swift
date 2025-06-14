//  ExploreViewModel.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/8/25

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers()}
    }
    
    @MainActor 
    private func fetchUsers() async throws{
        self.users = try await UserService.fetchUsers()
    }
}
