//  User.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/6/25

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
