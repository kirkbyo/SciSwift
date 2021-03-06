//
//  UnitConversion.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

import Foundation

public protocol UnitConversion {
    var conversionFactor: Double { get }
}

public func calculateUnitConversionFactor<A: OperableUnit>(a: A, b: A) -> Double {
    return a.conversionFactor / b.conversionFactor
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
