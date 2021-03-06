//
//  MockUnits.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import Foundation
@testable import Metric

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
let SomeUnitWithGreaterMagnitude = SomeUnitGroup(label: "SomeUnitWithGreaterMagnitude", magnitude: 100.0)
