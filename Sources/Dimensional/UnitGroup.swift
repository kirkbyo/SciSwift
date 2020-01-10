//
//  File.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

public protocol UnitGroup: class, CustomStringConvertible, Equatable {
    var description: String { get }
    var label: String { get }
    var magnitude: Double { get }
}

public extension UnitGroup {
    var description: String {
        return label
    }
}

public func ==<T: UnitGroup>(lhs: T, rhs: T) -> Bool {
    return lhs === rhs
}
