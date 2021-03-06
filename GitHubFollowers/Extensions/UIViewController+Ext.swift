//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 1/24/22.
//

import UIKit
import SafariServices
/***
global ONLY for this file because extensions can't hold variables
no longer in use - for reference only:
 
 fileprivate var containerView: UIView!
**/

extension UIViewController {
    
    //Any VC can call presentGFAlert()
    func presentGFAlert(title: String, message: String, buttonTitle: String){
        let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentDefaultError(){
        let alertVC = GFAlertViewController(title: "Something went wrong.", message: "We were unable to complete your task at this time.  Please try again.", buttonTitle: "Ok")
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
