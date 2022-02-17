//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/16/22.
//

import UIKit

extension UIView {
    
    //Variadic Parameters
    func addSubviews(views: UIView...) {
        for view in views { addSubview(view) }
    }
}
