//
//  String+Ext.swift
//  GitHubFollowers
//
//  Created by Raul Rodriguez III on 2/8/22.
//

// Code not used: Saving for reference.
/**
 
import Foundation

extension String {
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    
    func convertToDisplayFormattedDate() -> String {
        guard let date = self.convertToDate() else { return "Date Unknown" }
            return date.convertToMonthYearFormat()
    }
}

 **/
