//
//  PhysicalQuantity.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

/// Property of a material or system that can be quantified by measurement. It can be expressed as the combination of a magnitude and a unit.
/// [Source]( https://en.wikipedia.org/wiki/Physical_quantity)
public struct PhysicalQuantity<U: UnitGroup>: CustomStringConvertible {
    public let unit: U
    public let magnitude: Double
    
    public var description: String {
        return "\(magnitude) [\(unit)]"
    }
}

// MARK: Convenience Initializers
public extension Double {
    subscript<T: UnitGroup>(_ unit: T) -> PhysicalQuantity<T> {
        return PhysicalQuantity(unit: unit, magnitude: self)
    }
}

// MARK: - Opperations
public func +<T: UnitGroup>(_ lhs: PhysicalQuantity<T>, rhs: PhysicalQuantity<T>) -> PhysicalQuantity<T> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude + rhs.magnitude))
}

public func /<T: UnitGroup>(_ lhs: PhysicalQuantity<T>, rhs: PhysicalQuantity<T>) -> PhysicalQuantity<T> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude / rhs.magnitude))
}

public func *<T: UnitGroup>(_ lhs: PhysicalQuantity<T>, rhs: PhysicalQuantity<T>) -> PhysicalQuantity<T> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude * rhs.magnitude))
}

public func -<T: UnitGroup>(_ lhs: PhysicalQuantity<T>, rhs: PhysicalQuantity<T>) -> PhysicalQuantity<T> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude - rhs.magnitude))
}

