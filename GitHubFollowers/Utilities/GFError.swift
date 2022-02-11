//
//  GFError.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/25/22.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid request.  Please try again."
    case unableToComplete = "Unable to complete your request.  Please check your internet connection."
    case invalidResponse = "Invalid response from the server.  Please try again."
    case invalidData = "The data received from the server was invalid.  Please try again."
    case unableToFavorite = "There was an error making this user a favorite.  Please try again."
    case alreadyInFavorites = "You've already favorited this user.  You must really like them!"
    
    
}

