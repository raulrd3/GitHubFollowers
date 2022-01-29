//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import Foundation

struct Follower: Codable, Hashable {
    // with Codable, variable names must match key in API dict from JSON response and converts them into objects
    var login: String
    // Codable can read avatar_url as avatarURL to conform to swift camelCase
    var avatarUrl: String
}


/**
 struct Folower: Codable, Hashable {
 
 var login: String
 var avatarUrl: String
 
 // hashes only login
 func has(into hasher: inout Hasher) {
    hasher.combine(login)
 }
 }
 */
