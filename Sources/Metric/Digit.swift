//
//  Digit.swift
//  
//
//  Created by Ozzie Kirkby on 2020-09-07.
//

public protocol DigitType: Equatable, CustomStringConvertible {
    var value: Int { get }
}

extension DigitType {
    public var description: String {
        return String(self.value)
    }
}

public struct Digit {
    public struct Zero: DigitType { public let value = 0 }
    public struct One: DigitType { public let value = 1 }
    public struct Two: DigitType { public let value = 2 }
    public struct Three: DigitType { public let value = 3 }
    public struct Four: DigitType { public let value = 4 }
    public struct Five: DigitType { public let value = 5 }
    public struct Six: DigitType { public let value = 6 }
    public struct Seven: DigitType { public let value = 7 }
    public struct Eight: DigitType { public let value = 8 }
    public struct Nine: DigitType { public let value = 9 }
    
    public static let zero = Zero()
    public static let one = One()
    public static let two = Two()
    public static let three = Three()
    public static let four = Four()
    public static let five = Five()
    public static let six = Six()
    public static let seven = Seven()
    public static let eight = Eight()
    public static let nine = Nine()
}
