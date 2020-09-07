//
//  PhysicalQuantityTests.swift
//
//
//  Created by Ozzie Kirkby on 2020-09-10.
//

import XCTest
@testable import Dimensional

final class InternationalSystemTests: XCTestCase {
    func testUnitsCanBeComposed() {
        let subjectA = 10.0 [m/s]
        let subjectB = 5.0 [m/s]
        let result = subjectA - subjectB
        XCTAssertEqual(result.unit, (m/s))
        XCTAssertEqual(result.magnitude, 5)
    }
    
    func testUnitsCanBeComplexComposed() {
        let subjectA = 10.0 [(kg^Digit.three)/(m^Digit.two)*s]
        let subjectB = 5.0 [(kg^Digit.three)/(m^Digit.two)*s]
        let result = subjectA - subjectB
        XCTAssertEqual(result.unit, ((kg^Digit.three)/(m^Digit.two)*s))
        XCTAssertEqual(result.magnitude, 5)
    }
    
    static var allTests = [
        ("testUnitsCanBeComposed", testUnitsCanBeComposed),
        ("testUnitsCanBeComplexComposed", testUnitsCanBeComplexComposed)
    ]
}
