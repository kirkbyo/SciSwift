//
//  UnitTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import XCTest
@testable import Dimensional

final class SomeUnitGroup: UnitGroup {
    let label: String
    let magnitude: Double

    fileprivate init(label: String, magnitude: Double) {
        self.magnitude = magnitude
        self.label = label
    }
}

final class SomeOtherUnitGroup: UnitGroup {
    let label: String
    let magnitude: Double

    fileprivate init(label: String, magnitude: Double) {
        self.magnitude = magnitude
        self.label = label
    }
}

let SomeUnit = SomeUnitGroup(label: "SomeUnit", magnitude: 1.0)
let SomeOtherUnit = SomeOtherUnitGroup(label: "SomeOtherUnit", magnitude: 1.0)

final class UnitTests: XCTestCase {
    
    func testEquality() {
        XCTAssertEqual(SomeUnit, SomeUnit)
    }
    
    func testDescription() {
        XCTAssertEqual(SomeUnit.label, "SomeUnit")
    }
    
    static var allTests = [
        ("testEquality", testEquality),
        ("testDescription", testDescription),
    ]
}
