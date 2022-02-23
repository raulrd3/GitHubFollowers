//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/16/22.
//

import UIKit

extension UIView {
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    //Variadic Parameters
    func addSubviews(views: UIView...) {
        for view in views { addSubview(view) }
    }
}
