//
//  Tests.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 31/03/22.
//

import XCTest
import EasyDateFormatter

class Tests: XCTestCase {
    
    // MARK: - FormatterConfiguration Tests
    
    let formatString = "EEEE, MMM d, yyyy"
    let spanishLocaleId = "es"
    let englishLocaleId = "en"
    let defaultTimeZone = TimeZone.init(identifier: "GMT")!

    func testFormatterConfigurationInitialization() {
        let sut = FormatterConfiguration(format: formatString, locale: spanishLocaleId, timeZone: defaultTimeZone)
        
        XCTAssertEqual(formatString, sut.format)
        XCTAssertEqual(spanishLocaleId, sut.locale)
        XCTAssertEqual(defaultTimeZone, sut.timeZone)
    }
    
    func testFormatterConfigurationDefaultLocale() {
        let sut = FormatterConfiguration(format: formatString)
                
        XCTAssertEqual(englishLocaleId, sut.locale)
    }
    
    func testFormatterConfigurationDefaultTimeZone() {
        let sut = FormatterConfiguration(format: formatString, timeZone: defaultTimeZone)
        
        XCTAssertEqual(defaultTimeZone, sut.timeZone)
    }
    
    // MARK: - Date extension Tests
    
    func testDateToString() {
        let formatterConfig = FormatterConfiguration.init(format: formatString, timeZone: defaultTimeZone)
        let date = Date(timeIntervalSinceReferenceDate: -123456789.0)
        let stringDate = date.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "Sunday, Feb 2, 1997")
    }
}
