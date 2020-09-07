//
//  PhysicalQuantityTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-05.
//

import XCTest
@testable import Dimensional

final class PhysicalQuantityTests: XCTestCase {
    
    func testNumberWithUnitInitialization() {
        let subject = 10 [SomeUnit]
        XCTAssertEqual(subject.unit, SomeUnit)
        XCTAssertEqual(subject.magnitude, 10)
    }
    
    func testStringRepresentable() {
        let subject = 10 [SomeUnit]
        XCTAssertEqual(subject.description, "10.0 [SomeUnit]")
    }
    
    func testMuplicationOperation() {
        let lhs = 5 [SomeUnit]
        let rhs = 6 [SomeUnit]
        let product = lhs * rhs
        XCTAssertEqual(product.magnitude, 30)
        XCTAssertEqual(product.unit, SomeUnit)
    }
    
    func testDivisionOperation() {
        let lhs = 30 [SomeUnit]
        let rhs = 5 [SomeUnit]
        let quotient = lhs / rhs
        XCTAssertEqual(quotient.magnitude, 6)
        XCTAssertEqual(quotient.unit, SomeUnit)
    }
    
    func testAdditionOperation() {
        let lhs = 3 [SomeUnit]
        let rhs = 2 [SomeUnit]
        let sum = lhs + rhs
        XCTAssertEqual(sum.magnitude, 5)
        XCTAssertEqual(sum.unit, SomeUnit)
    }
    
    func testSubstractionOperation() {
        let lhs = 8 [SomeUnit]
        let rhs = 3 [SomeUnit]
        let difference = lhs - rhs
        XCTAssertEqual(difference.magnitude, 5)
        XCTAssertEqual(difference.unit, SomeUnit)
    }
    
    func testSubstractionOperation2() {
        let lhs = 8 [SomeUnit^Digit.one]
        let rhs = 3 [SomeUnit^Digit.one]
        let difference = lhs - rhs
        XCTAssertEqual(difference.magnitude, 5)
        XCTAssertEqual(difference.unit, UnitOperation.exponent(base: SomeUnit, exponent: Digit.one))
    }
    
    static var allTests = [
        ("testNumberWithUnitInitialization", testNumberWithUnitInitialization),
        ("testStringRepresentable", testStringRepresentable),
        ("testMuplicationOperation", testMuplicationOperation),
        ("testDivisionOperation", testDivisionOperation),
        ("testAdditionOperation", testAdditionOperation),
    ]
}
