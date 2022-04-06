import XCTest
import EasyDateFormatter

class Tests: XCTestCase {
    
    let stringFormat = "EEEE, MMM d, yyyy"
    let currentDate = Date(timeIntervalSinceReferenceDate: -123456789.0) // Sunday, Feb 2, 1997 in GMT
    let defaultTimeZone = TimeZone.init(identifier: "GMT")!
    
    func testCorrectSpanishFormattedDate() {
        let formatterConfig = FormatterConfiguration.init(format: stringFormat, locale: "es", timeZone: defaultTimeZone)
        let stringDate = currentDate.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "domingo, feb 2, 1997")
    }
    
    
    func testCorrectEnglishFormattedDate() {
        let formatterConfig = FormatterConfiguration.init(format: stringFormat, locale: "en", timeZone: defaultTimeZone)
        let stringDate = currentDate.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "Sunday, Feb 2, 1997")
    }
    
}
