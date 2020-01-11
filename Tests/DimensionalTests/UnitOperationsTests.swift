//
//  UnitOperationsTests.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-11.
//

import XCTest
@testable import Dimensional

final class UnitOperationsTests: XCTestCase {
    // MARK: - General
    func testMultiplicationDescription() {
        let multiplication: UnitOperation = SomeUnit * SomeUnit
        XCTAssertEqual(multiplication.description, "\(SomeUnit) * \(SomeUnit)")
    }
    
    func testDivisonDescription() {
        let divison: UnitOperation = SomeUnit / SomeUnit
        XCTAssertEqual(divison.description, "\(SomeUnit) / \(SomeUnit)")
    }
    
    func testExponentDescription() {
        let exponent: UnitOperation = SomeUnit ^ 2
        XCTAssertEqual(exponent.description, "\(SomeUnit) ^ 2")
    }
    
    // MARK: - Operators Tests
    func testMultiplicationOperatorSameType() {
        let subject: UnitOperation = SomeUnit * SomeUnit
        
        XCTAssert(subject ~= .mulitplication(SomeUnit, SomeUnit))
    }
    
    func testMultiplicationOperatorDifferentType() {
        let subject: UnitOperation = SomeUnit * SomeOtherUnit
        
        XCTAssert(subject ~= .mulitplication(SomeUnit, SomeOtherUnit))
    }
    
    func testDivisonOperatorSameType() {
        let subject: UnitOperation = SomeUnit / SomeUnit
        
        XCTAssert(subject ~= .division(SomeUnit, SomeUnit))
    }
    
    func testDivisonOperatorDifferentType() {
        let subject: UnitOperation = SomeUnit / SomeOtherUnit
        
        XCTAssert(subject ~= .division(SomeUnit, SomeOtherUnit))
    }
    
    func testExponentOperator() {
        let subject: UnitOperation = SomeUnit ^ 2
        
        XCTAssert(subject ~= .exponent(SomeUnit, 2))
    }
    

    static var allTests = [
        ("testMultiplicationOperatorSameType", testMultiplicationOperatorSameType),
        ("testMultiplicationOperatorDifferentType", testMultiplicationOperatorDifferentType),
        ("testDivisonOperatorSameType", testDivisonOperatorSameType),
        ("testDivisonOperatorDifferentType", testDivisonOperatorDifferentType),
        ("testExponentOperator", testExponentOperator),
        ("testMultiplicationDescription", testMultiplicationDescription),
        ("testDivisonDescription", testDivisonDescription),
        ("testExponentDescription", testExponentDescription),
    ]
}
