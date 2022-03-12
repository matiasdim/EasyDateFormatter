//
//  EasyDateFormatter.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 12/03/22.
//

import Foundation

/// The configuration parameters to use Date's toString method
public class FormatterConfiguration {
    let format: String
    let locale: String
    
    /// Initialization of FormatterConfiguration
    /// - Parameters:
    ///   - format: The desired string format to convert the date to
    ///   - locale: The desired locale to use when formatting the date. Default value is 'en'
    public init(format: String, locale: String = "en") {
        self.format = format
        self.locale = locale
    }
}

extension Date {
    
    /// Converts a date to String using the provided parameters
    /// - Parameter configuration: FormatterConfiguration includes needed configuration parameters
    /// - Returns: The formatted string date
    public func toString(withConfiguration configuration: FormatterConfiguration) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = configuration.format
        let localeIdentifier = configuration.locale
        formatter.locale = Locale.init(identifier: localeIdentifier)
        
        return formatter.string(from: self)
    }
}
