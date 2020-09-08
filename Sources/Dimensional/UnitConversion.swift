//
//  File.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import Foundation

public protocol UnitConversion {
    var conversionFactor: Double { get }
}

public extension UnitOperation.division {
    var conversionFactor: Double {
        return lhs.conversionFactor / rhs.conversionFactor
    }
}

public extension UnitOperation.mulitplication {
    var conversionFactor: Double {
        return lhs.conversionFactor * rhs.conversionFactor
    }
}

public extension UnitOperation.exponent {
    var conversionFactor: Double {
        return pow(base.conversionFactor, Double(exponent.value))
    }
}

public extension UnitGroup {
    var conversionFactor: Double {
        return magnitude
    }
}

public extension Measurement {
    subscript(_ destinationUnit: Unit) -> Measurement<Unit> {
        let conversionRatio = destinationUnit.conversionFactor / self.unit.conversionFactor
        return Measurement(unit: destinationUnit, magnitude: self.magnitude * conversionRatio)
    }
}
