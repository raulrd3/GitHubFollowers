//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/8/22.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
