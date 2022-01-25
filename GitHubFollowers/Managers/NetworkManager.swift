//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void){
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request.  Please try again.")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completed(nil, "Unable to complete your request.  Please check your internet connection.")
            }
            
            // https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
            // 200 Response == OK
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from the server.  Please try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data received from the server was invalid.  Please try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The data received from the server was invalid.  Please try again.")
            }

            
        }
        
        task.resume()
    }
}
