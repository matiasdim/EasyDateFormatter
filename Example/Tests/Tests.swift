import XCTest
import EasyDateFormatter

class Tests: XCTestCase {
    
    let stringFormat = "EEEE, MMM d, yyyy"
    let currentDate = Date(timeIntervalSinceReferenceDate: -123456789.0) // Saturday, Feb 1, 1997
    
    func testCorrectSpanishFormattedDate() {
        let formatterConfig = FormatterConfiguration.init(format: stringFormat, locale: "es")
        let stringDate = currentDate.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "sábado, feb 1, 1997")
    }
    
    
    func testCorrectEnglishFormattedDate() {
        let formatterConfig = FormatterConfiguration.init(format: stringFormat, locale: "en")
        let stringDate = currentDate.toString(withConfiguration: formatterConfig)
        
        XCTAssertEqual(stringDate, "Saturday, Feb 1, 1997")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
