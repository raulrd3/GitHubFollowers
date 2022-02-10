//
//  GFRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/7/22.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    // override the parent class
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
