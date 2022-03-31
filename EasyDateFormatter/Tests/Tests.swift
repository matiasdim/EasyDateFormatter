//
//  Tests.swift
//  EasyDateFormatter
//
//  Created by Matías  Gil Echavarría on 31/03/22.
//

import XCTest

class Tests: XCTestCase {
    
    // MARK: - FormatterConfiguration Tests
    
    let formatString = "EEEE, MMM d, yyyy"
    let spanishLocaleId = "es"
    let englishLocaleId = "en"

    func testFormatterConfigurationInitialization() {
        let sut = FormatterConfiguration(format: formatString, locale: spanishLocaleId)
        
        XCTAssertEqual(formatString, sut.format)
        XCTAssertEqual(spanishLocaleId, sut.locale)
    }
    
    func testFormatterConfigurationDefaultLocale() {
        let sut = FormatterConfiguration(format: formatString)
                
        XCTAssertEqual(englishLocaleId, sut.locale)
    }
    
    // MARK: - Date extension Tests
    
    func testDateToString() {
        let formatterConfig = FormatterConfiguration.init(format: formatString)
        let date = Date(timeIntervalSinceReferenceDate: -123456789.0)
        let stringDate = date.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "Saturday, Feb 1, 1997")
    }
}
