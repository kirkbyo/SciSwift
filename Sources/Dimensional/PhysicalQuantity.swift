//
//  PhysicalQuantity.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

/// Property of a material or system that can be quantified by measurement. It can be expressed as the combination of a magnitude and a unit.
/// [Source]( https://en.wikipedia.org/wiki/Physical_quantity)
public struct PhysicalQuantity<Unit: OperableUnit>: CustomStringConvertible, Equatable {
    public let unit: Unit
    public let magnitude: Double
    
    public var description: String {
        return "\(magnitude) [\(unit)]"
    }
}

public func ==<A: OperableUnit, B: OperableUnit>(_ lhs: PhysicalQuantity<A>, _ rhs: PhysicalQuantity<B>) -> Bool {
    return lhs.unit.description == rhs.unit.description && lhs.magnitude == rhs.magnitude
}

// MARK: Convenience Initializers
public extension Double {
    subscript<A: OperableUnit>(_ operation: A) -> PhysicalQuantity<A> {
        return PhysicalQuantity(unit: operation, magnitude: self)
    }
}


// MARK: - Opperations
public func +<A: OperableUnit>(_ lhs: PhysicalQuantity<A>, rhs: PhysicalQuantity<A>) -> PhysicalQuantity<A> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude + rhs.magnitude))
}

public func /<A: OperableUnit>(_ lhs: PhysicalQuantity<A>, rhs: PhysicalQuantity<A>) -> PhysicalQuantity<A> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude / rhs.magnitude))
}

public func *<A: OperableUnit>(_ lhs: PhysicalQuantity<A>, rhs: PhysicalQuantity<A>) -> PhysicalQuantity<A> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude * rhs.magnitude))
}

public func -<A: OperableUnit>(_ lhs: PhysicalQuantity<A>, rhs: PhysicalQuantity<A>) -> PhysicalQuantity<A> {
    return PhysicalQuantity(unit: lhs.unit, magnitude: (lhs.magnitude - rhs.magnitude))
}
