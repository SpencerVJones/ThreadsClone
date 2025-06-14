//  Thread.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/13/25

import Firebase
import FirebaseFirestore

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String // Pointer to user that owns the thread
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
    
    
}
