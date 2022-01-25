//
//  User.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import Foundation

struct User: Codable {
    
    //matched to JSON output from:  curl https://api.github.com/users/raulrd3
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int?
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
