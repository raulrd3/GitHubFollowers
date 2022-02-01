//
//  UserInfoViewControllwerViewController.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/31/22.
//

import UIKit

class UserInfoViewController: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)
    }
    
    @objc func dismissVC() {
        dismiss(animated: true) {
        }
    }
}
