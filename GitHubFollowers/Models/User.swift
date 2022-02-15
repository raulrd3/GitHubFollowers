//
//  User.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import Foundation

struct User: Codable {
    
    //matched to JSON output from:  curl https://api.github.com/users/raulrd3
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    var publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}
