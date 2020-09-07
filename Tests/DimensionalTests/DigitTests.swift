//
//  DigitTest.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import XCTest
@testable import Dimensional

final class DigitTests: XCTestCase {
    func testImplementsStringRepresentable() {
        XCTAssertEqual("\(Digit.zero)", "0")
        XCTAssertEqual("\(Digit.one)", "1")
        XCTAssertEqual("\(Digit.two)", "2")
        XCTAssertEqual("\(Digit.three)", "3")
        XCTAssertEqual("\(Digit.four)", "4")
        XCTAssertEqual("\(Digit.five)", "5")
        XCTAssertEqual("\(Digit.six)", "6")
        XCTAssertEqual("\(Digit.seven)", "7")
        XCTAssertEqual("\(Digit.eight)", "8")
        XCTAssertEqual("\(Digit.nine)", "9")
    }
    
    func testEqualityByValue() {
        XCTAssertEqual(Digit.one, Digit.One())
    }
    
    static var allTests = [
        ("testImplementsStringRepresentable", testImplementsStringRepresentable),
        ("testEqualityByValue", testEqualityByValue)
    ]
}
