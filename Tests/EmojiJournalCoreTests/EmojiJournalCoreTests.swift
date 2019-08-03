import XCTest
@testable import EmojiJournalCore

final class EmojiJournalCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EmojiJournalCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
