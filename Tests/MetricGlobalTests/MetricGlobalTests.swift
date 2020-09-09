//
//  MetricGlobalTests.swift
//
//
//  Created by Ozzie Kirkby on 2020-09-10.
//

import XCTest
@testable import Metric
@testable import MetricGlobal

final class MetricGlobalTests: XCTestCase {
    func testUnitsCanBeAccessedAtGlobalScope() {
        let subject = m
        XCTAssertEqual(subject.description, "m")
    }
    
    func testUnitsCanBeComposed() {
        let subject = m/s
        XCTAssertEqual(subject.description, "m/s")
    }
    
    func testUnitsCanBeComplexComposed() {
        let subject = (kg^Digit.three)/(m^Digit.two)*s
        XCTAssertEqual(subject.description, "kg^3/m^2 s")
    }
    
    static var allTests = [
        ("testUnitsCanBeAccessedAtGlobalScope", testUnitsCanBeAccessedAtGlobalScope),
        ("testUnitsCanBeComposed", testUnitsCanBeComposed),
        ("testUnitsCanBeComplexComposed", testUnitsCanBeComplexComposed),
    ]
}
