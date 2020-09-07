//
//  UnitConversionTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import Foundation

import XCTest
@testable import Dimensional

final class UnitConversionTests: XCTestCase {
    func testBasicUnitConversion() {
        let subjectA = 10.0 [m]
        let subjectB = 9 [cm]
        let result = subjectA - subjectB
        XCTAssertEqual(result.magnitude, 9.91)
        XCTAssertEqual(result.unit.label, "m")
    }
    
    func testDerivedQuotientUnitConversion() {
        let subjectA = 5 [m/s]
        let subjectB = 5 [cm/ms]
        let result = subjectA - subjectB
        XCTAssertEqual(result.magnitude, -45)
        XCTAssertEqual(result.unit.description, "m/s")
    }
    
    func testDerivedProductUnitConversion() {
        let subjectA = 5.01 [m*s]
        let subjectB = 1000 [cm*ms]
        let result = subjectA - subjectB
        XCTAssertEqual(result.magnitude, 5)
        XCTAssertEqual(result.unit.description, "m s")
    }
    
    func testDerivedExponentUnitConversion() {
        let subjectA = 5 [m/(s^Digit.two)]
        let subjectB = 0.001 [cm/(ms^Digit.two)]
        let result = subjectA - subjectB
        XCTAssertEqual(result.magnitude, -5)
        XCTAssertEqual(result.unit.description, "m/s^2")
    }
    
    func testConvenienceUnitConverter() {
        let subject = 1 [m]
        let result = subject [cm]
        XCTAssertEqual(result.magnitude, 100)
        XCTAssertEqual(result.unit.description, "cm")
    }
    
    func testConvenienceUnitConverterInline() {
        let subject = 1 [m] [cm]
        XCTAssertEqual(subject.magnitude, 100)
        XCTAssertEqual(subject.unit.description, "cm")
    }
    
    static var allTests = [
        ("testBasicUnitConversion", testBasicUnitConversion),
        ("testDerivedQuotientUnitConversion", testDerivedQuotientUnitConversion),
        ("testDerivedProductUnitConversion", testDerivedProductUnitConversion),
        ("testDerivedExponentUnitConversion", testDerivedExponentUnitConversion),
        ("testConvenienceUnitConverter", testConvenienceUnitConverter),
        ("testConvenienceUnitConverterInline", testConvenienceUnitConverterInline)
    ]
}
