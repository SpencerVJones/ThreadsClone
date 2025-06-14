//  CreateThreadViewModel.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/13/25

import FirebaseAuth
import Firebase

class CreateThreadViewModel: ObservableObject {
    @Published var caption = ""
    
    func uploadThread() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return}
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
