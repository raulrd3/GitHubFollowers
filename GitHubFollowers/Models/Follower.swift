//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import Foundation

struct Follower: Codable {
    // with Codable, variable names must match key in API dict from JSON response and converts them into objects
    var login: String
    // Codable can read avatar_url as avatarURL to conform to swift camelCase
    var avatarUrl: String
}
