//
//  UnitOperations.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

public protocol OperableUnit: Equatable, CustomStringConvertible, UnitConversion {
    var description: String { get }
}

public struct UnitOperation {
    public struct division<A: OperableUnit, B: OperableUnit>: OperableUnit {
        let lhs: A
        let rhs: B
        
        public var description: String {
            return "\(lhs)/\(rhs)"
        }
    }
    
    public struct mulitplication<A: OperableUnit, B: OperableUnit>: OperableUnit {
        let lhs: A
        let rhs: B
        
        public var description: String {
            return "\(lhs) \(rhs)"
        }
    }
    
    public struct exponent<A: OperableUnit, B: DigitType>: OperableUnit {
        let base: A
        let exponent: B
        
        public var description: String {
            return "\(base)^\(exponent)"
        }
    }
}

public func * <A: OperableUnit, B: OperableUnit>(lhs: A, rhs: B) -> UnitOperation.mulitplication<A, B> {
    return UnitOperation.mulitplication(lhs: lhs, rhs: rhs)
}

public func / <A: OperableUnit, B: OperableUnit>(lhs: A, rhs: B) -> UnitOperation.division<A, B> {
    return UnitOperation.division(lhs: lhs, rhs: rhs)
}

public func ^ <A: OperableUnit, B: DigitType>(lhs: A, rhs: B) -> UnitOperation.exponent<A, B> {
    return UnitOperation.exponent(base: lhs, exponent: rhs)
}
