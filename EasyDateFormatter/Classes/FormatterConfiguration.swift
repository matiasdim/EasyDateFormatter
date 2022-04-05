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
    
    /// Initialization of FormatterConfiguration
    /// - Parameters:
    ///   - format: The desired string format to convert the date to. e.g. "EEEE, MMM d, yyyy"
    ///   - locale: The desired locale to use when formatting the date. Look for the identifiers given by 'NSLocale.availableLocaleIdentifiers'. The default value is 'en'.
    public init(format: String, locale: String = "en") {
        self.format = format
        self.locale = locale
    }
}
