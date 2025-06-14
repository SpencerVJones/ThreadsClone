//  UserService.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/8/25

import Foundation
import FirebaseAuth
import FirebaseFirestore

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task {try await fetchCurrentUser()}
    }
    
    @MainActor func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: Current user is \(user)")
    }
    
    
    // Function to fetch all users except current user
    static func fetchUsers() async throws -> [User] {
        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self)})
        return users.filter({$0.id != currentUid})
    }
    
    static func fetchUser(withUid uid:String) async throws -> User? {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    // For clearing the current user when signing out
    func reset() {
        self.currentUser = nil
    }
    
    @MainActor
    func updateUserProfileImage(withImageUrl imageUrl: String) async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        try await Firestore.firestore().collection("users").document(currentUid).updateData(["profileImageUrl": imageUrl])
        self.currentUser?.profileImageUrl = imageUrl
    }
    
}
