//
//  SciValue.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Metric

/// Property of a material or system that can be quantified by physical quantity. It can be expressed as the combination of a magnitude and a unit.
/// [Source]( https://en.wikipedia.org/wiki/Physical_quantity)
public struct SciValue<Unit: OperableUnit>: CustomStringConvertible, Equatable {
    public let unit: Unit
    public let magnitude: Double
    
    public var description: String {
        return "\(magnitude) [\(unit)]"
    }
    
    public subscript(_ destinationUnit: Unit) -> SciValue<Unit> {
        let conversionRatio = destinationUnit.conversionFactor / self.unit.conversionFactor
        return SciValue(unit: destinationUnit, magnitude: self.magnitude * conversionRatio)
    }
}

public func ==<A: OperableUnit, B: OperableUnit>(_ lhs: SciValue<A>, _ rhs: SciValue<B>) -> Bool {
    return lhs.unit.description == rhs.unit.description && lhs.magnitude == rhs.magnitude
}

// MARK: Convenience Initializers
public extension Double {
    subscript<A: OperableUnit>(_ operation: A) -> SciValue<A> {
        return SciValue(unit: operation, magnitude: self)
    }
}

// MARK: - SciValue Opperations
public func +<A: OperableUnit>(_ lhs: SciValue<A>, rhs: SciValue<A>) -> SciValue<A> {
    let conversionRatio = calculateUnitConversionFactor(a: lhs.unit, b: rhs.unit)
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude + (rhs.magnitude * conversionRatio)))
}

public func /<A: OperableUnit>(_ lhs: SciValue<A>, rhs: SciValue<A>) -> SciValue<A> {
    let conversionRatio = calculateUnitConversionFactor(a: lhs.unit, b: rhs.unit)
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude / (rhs.magnitude * conversionRatio)))
}

public func *<A: OperableUnit>(_ lhs: SciValue<A>, rhs: SciValue<A>) -> SciValue<A> {
    let conversionRatio = calculateUnitConversionFactor(a: lhs.unit, b: rhs.unit)
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude * (rhs.magnitude * conversionRatio)))
}

public func -<A: OperableUnit>(_ lhs: SciValue<A>, rhs: SciValue<A>) -> SciValue<A> {
    let conversionRatio = calculateUnitConversionFactor(a: lhs.unit, b: rhs.unit)
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude - (rhs.magnitude * conversionRatio)))
}

public func *<A: OperableUnit>(_ lhs: Double, rhs: SciValue<A>) -> SciValue<A> {
    return SciValue(unit: rhs.unit, magnitude: (rhs.magnitude * lhs))
}

public func *<A: OperableUnit>(_ lhs: SciValue<A>, _ rhs: Double) -> SciValue<A> {
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude * rhs))
}

public func /<A: OperableUnit>(_ lhs: Double, rhs: SciValue<A>) -> SciValue<A> {
    return SciValue(unit: rhs.unit, magnitude: (lhs / rhs.magnitude))
}

public func /<A: OperableUnit>(_ lhs: SciValue<A>, _ rhs: Double) -> SciValue<A> {
    return SciValue(unit: lhs.unit, magnitude: (lhs.magnitude / rhs))
}
