//  AuthService.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/6/25

import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    @Published var userSession: FirebaseAuth.User? // Keep track of if user is logged in
    
    static let shared = AuthService()
    
    // Initalization
    init() {
        self.userSession = Auth.auth().currentUser // if this has a value we know someone is logged in
    }
    
    // For Sign in
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: User Logged in: \(result.user.uid)")
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("DEBUG: Error Logging in User: \(error.localizedDescription)")
        }
    }
    
    // For Sign up
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
            print("DEBUG: User Created: \(result.user.uid)")
        } catch {
            print("DEBUG: Error Creating User: \(error.localizedDescription)")
        }
    }
    
    // For sign out 
    func signOut() {
        try? Auth.auth().signOut() // Signs out on backend
        self.userSession = nil // Removes session locally and updates routing
        UserService.shared.reset() // Sets current user object to nil
    }
    
    // Upload user data when signing up a user
    private func uploadUserData(withEmail email: String, fullname: String, username: String, id: String) async throws {
        let user = User(id: id, fullname: fullname, email: email, username: username)
        // encode the user
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }
}
