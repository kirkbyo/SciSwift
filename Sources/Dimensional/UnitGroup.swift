//
//  UnitGroup.swift
//  
//
//  Created by Ozzie Kirkby on 2020-01-10.
//

import Foundation

public protocol UnitGroup: class, CustomStringConvertible, OperableUnit {
    var description: String { get }
    var label: String { get }
}

public extension UnitGroup {
    var description: String {
        return label
    }
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs === rhs
    }
}
