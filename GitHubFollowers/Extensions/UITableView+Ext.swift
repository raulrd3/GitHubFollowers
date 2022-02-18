//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/17/22.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
