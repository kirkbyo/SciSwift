//
//  UnitConversionTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import XCTest
@testable import Metric

final class UnitConversionTests: XCTestCase {
    func testBasicUnitConversion() {
        let ratio = calculateUnitConversionFactor(a: SI.m, b: SI.cm)
        XCTAssertEqual(ratio, 1/100)
    }

    func testDerivedQuotientUnitConversion() {
        let ratio = calculateUnitConversionFactor(a: SI.m/SI.s, b: SI.cm/SI.ms)
        XCTAssertEqual(ratio, (1000/100))
    }

    func testDerivedProductUnitConversion() {
        let ratio = calculateUnitConversionFactor(a: SI.m*SI.s, b: SI.cm*SI.ms)
        XCTAssertEqual(ratio, 1/(1000 * 100))
    }

    func testDerivedExponentUnitConversion() {
        let ratio = calculateUnitConversionFactor(a: SI.m/(SI.s^Digit.two), b: SI.cm/(SI.ms^Digit.two))
        XCTAssertEqual(ratio, (1000 * 1000)/(100))
    }

    static var allTests = [
        ("testBasicUnitConversion", testBasicUnitConversion),
        ("testDerivedQuotientUnitConversion", testDerivedQuotientUnitConversion),
        ("testDerivedProductUnitConversion", testDerivedProductUnitConversion),
        ("testDerivedExponentUnitConversion", testDerivedExponentUnitConversion),
    ]
}
