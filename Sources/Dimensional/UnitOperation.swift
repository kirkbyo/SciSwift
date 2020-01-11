//
//  UnitOperations.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

public protocol OperableUnit: Equatable {}

public indirect enum UnitOperation<A: OperableUnit, B: OperableUnit>: OperableUnit, Equatable, CustomStringConvertible {
    case mulitplication(A, B)
    case division(A, B)
    case exponent(A, Int)
    
    public var description: String {
        switch self {
        case let .division(lhs, rhs):
            return "\(lhs) / \(rhs)"
        case let .exponent(lhs, rhs):
            return "\(lhs) ^ \(rhs)"
        case let .mulitplication(lhs, rhs):
            return "\(lhs) * \(rhs)"
        }
    }
}

public func * <A: OperableUnit, B: OperableUnit>(lhs: A, rhs: B) -> UnitOperation<A, B> {
    return .mulitplication(lhs, rhs)
}

public func / <A: OperableUnit, B: OperableUnit>(lhs: A, rhs: B) -> UnitOperation<A, B> {
    return .division(lhs, rhs)
}

public func ^ <T: OperableUnit>(lhs: T, rhs: Int) -> UnitOperation<T, T> {
    return .exponent(lhs, rhs)
}
