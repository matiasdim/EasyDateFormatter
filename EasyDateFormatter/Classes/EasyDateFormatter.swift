//
//  EasyDateFormatter.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 12/03/22.
//

import Foundation

extension Date {    
    /// Converts a date to String using the provided parameters
    /// - Parameter configuration: FormatterConfiguration includes needed configuration parameters
    /// - Returns: The formatted string date
    public func toString(withConfiguration configuration: FormatterConfiguration) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = configuration.format
        let localeIdentifier = configuration.locale
        formatter.locale = Locale.init(identifier: localeIdentifier)
        formatter.timeZone = configuration.timeZone
        
        return formatter.string(from: self)
    }
}
