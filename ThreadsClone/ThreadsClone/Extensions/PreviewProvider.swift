//  PreviewProvider.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/8/25

import Firebase
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    // Mock User
    let user = User(id: NSUUID().uuidString, fullname: "Spencer Jones", email: "Spencer@example.com", username: "MakesSpence")
    
    // Mock Thread
    let thread = Thread(ownerUid: "123", caption: "This is a test thread", timestamp: Timestamp(), likes: 0)
}

