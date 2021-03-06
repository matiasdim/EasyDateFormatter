//
//  FormatterConfiguration.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 13/03/22.
//

import Foundation

/// The configuration parameters to use Date's toString method
public class FormatterConfiguration {
    public let format: String
    public let locale: String
    public let timeZone: TimeZone
    
    /// Initialization of FormatterConfiguration
    /// - Parameters:
    ///   - format: The desired string format to convert the date to. e.g. "EEEE, MMM d, yyyy"
    ///   - locale: The desired locale to use when formatting the date. Look for the identifiers given by 'NSLocale.availableLocaleIdentifiers'. The default value is 'en'.
    ///   - timezone: The desired tiezone to use when formmating the date. The default value is the system's timezone
    public init(format: String, locale: String = "en", timeZone: TimeZone = TimeZone.current) {
        self.format = format
        self.locale = locale
        self.timeZone = timeZone
    }
}
