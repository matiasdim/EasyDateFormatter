//
//  EasyDateFormatter.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 12/03/22.
//

import Foundation

public class FormatterConfiguration {
    let format: String
    let locale: String
    
    public init(format: String, locale: String = "en") {
        self.format = format
        self.locale = locale
    }
}

extension Date {

    public func toString(withConfiguration configuration: FormatterConfiguration) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = configuration.format
        let localeIdentifier = configuration.locale
        formatter.locale = Locale.init(identifier: localeIdentifier)
        
        return formatter.string(from: self)
    }
}
