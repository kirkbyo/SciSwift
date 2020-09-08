//
//  UnitOperationsTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-11.
//

import XCTest
@testable import Metric

final class UnitOperationsTests: XCTestCase {
    // MARK: - General
    func testMultiplicationDescriptionSameUnits() {
        let multiplication = SomeUnit * SomeUnit
        XCTAssertEqual(multiplication.description, "\(SomeUnit) \(SomeUnit)")
    }
    
    func testMultiplicationDescriptionDifferentUnits() {
        let multiplication = SomeUnit * SomeOtherUnit
        XCTAssertEqual(multiplication.description, "\(SomeUnit) \(SomeOtherUnit)")
    }
    
    func testDivisonDescriptionSameUnits() {
        let divison = SomeUnit / SomeUnit
        XCTAssertEqual(divison.description, "\(SomeUnit)/\(SomeUnit)")
    }
    
    func testDivisonDescriptionDifferentUnits() {
        let divison = SomeUnit / SomeOtherUnit
        XCTAssertEqual(divison.description, "\(SomeUnit)/\(SomeOtherUnit)")
    }
    
    func testExponentDescription() {
        let exponent = SomeUnit ^ Digit.two
        XCTAssertEqual(exponent.description, "\(SomeUnit)^2")
    }

    static var allTests = [
        ("testMultiplicationDescriptionSameUnits", testMultiplicationDescriptionSameUnits),
        ("testMultiplicationDescriptionDifferentUnits", testMultiplicationDescriptionDifferentUnits),
        ("testDivisonDescriptionSameUnits", testDivisonDescriptionSameUnits),
        ("testDivisonDescriptionDifferentUnits", testDivisonDescriptionDifferentUnits),
        ("testExponentDescription", testExponentDescription),
    ]
}
