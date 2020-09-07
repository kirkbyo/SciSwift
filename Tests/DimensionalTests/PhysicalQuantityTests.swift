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
    
    func testMuplicationOperationWithConversion() {
        let lhs = 5 [SomeUnit]
        let rhs = 5 [SomeUnitWithGreaterMagnitude]
        let product = lhs * rhs
        XCTAssertEqual(product.magnitude, 0.25)
        XCTAssertEqual(product.unit, SomeUnit)
    }
    
    func testDivisionOperation() {
        let lhs = 30 [SomeUnit]
        let rhs = 5 [SomeUnit]
        let quotient = lhs / rhs
        XCTAssertEqual(quotient.magnitude, 6)
        XCTAssertEqual(quotient.unit, SomeUnit)
    }
    
    func testDivisionOperationWithConversion() {
        let lhs = 10 [SomeUnit]
        let rhs = 5 [SomeUnitWithGreaterMagnitude]
        let quotient = lhs / rhs
        XCTAssertEqual(quotient.magnitude, 200)
        XCTAssertEqual(quotient.unit, SomeUnit)
    }
    
    func testAdditionOperation() {
        let lhs = 3 [SomeUnit]
        let rhs = 2 [SomeUnit]
        let sum = lhs + rhs
        XCTAssertEqual(sum.magnitude, 5)
        XCTAssertEqual(sum.unit, SomeUnit)
    }
    
    func testAdditionOperationWithConversion() {
        let lhs = 4.98 [SomeUnit]
        let rhs = 2 [SomeUnitWithGreaterMagnitude]
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
    
    func testSubstractionOperationWithConversion() {
        let lhs = 5.02 [SomeUnit]
        let rhs = 2 [SomeUnitWithGreaterMagnitude]
        let difference = lhs - rhs
        XCTAssertEqual(difference.magnitude, 5)
        XCTAssertEqual(difference.unit, SomeUnit)
    }
    
    static var allTests = [
        ("testNumberWithUnitInitialization", testNumberWithUnitInitialization),
        ("testStringRepresentable", testStringRepresentable),
        ("testMuplicationOperation", testMuplicationOperation),
        ("testMuplicationOperationWithConversion", testMuplicationOperationWithConversion),
        ("testDivisionOperation", testDivisionOperation),
        ("testDivisionOperationWithConversion", testDivisionOperationWithConversion),
        ("testAdditionOperation", testAdditionOperation),
        ("testAdditionOperationWithConversion", testAdditionOperationWithConversion),
        ("testSubstractionOperation", testSubstractionOperation),
        ("testSubstractionOperationWithConversion", testSubstractionOperationWithConversion)
    ]
}
