//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import UIKit

extension UIViewController {
    
    
    //Any VC can call presentGFAlertOnMainThread()
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String){
        //quickly place things onto main thread
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    
}
