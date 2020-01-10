import XCTest
@testable import Dimensional

final class DimensionalTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Dimensional().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
